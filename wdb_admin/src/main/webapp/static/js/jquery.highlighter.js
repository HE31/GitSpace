/**
 * This plugin is licensed under the CDDL v1.0.
 * You can find the full license text here: http://www.opensource.org/licenses/cddl1.txt.
 * 
 * jQuery Text Highlighter Plugin
 *
 * @version 1.0.1
 * @author: Xu Jin
 */

(function($){
	$.extend({
		highlighter: {
			__config__: {
		 	 	sourceHtmlDataKey: "__$.highlighter.data.sourceHTML__"
			}
		}
	});
	 
	/**
	 * �����ؼ���
	 * ע��Ŀǰ�޷�ƥ���Խ HTML ��ǩ�Ĺؼ���
	 */
	$.fn.highlight = function(keyWords, options) {
	    var defaultWrapper = "em";
		var settings = $.extend({
			hClass: null,
			hColor: "#FF522B",
			separator: " ",
			wrapper: defaultWrapper,
			useDefaultStyle: true,
			needUnhighlight: false
		}, options);
		
		var hasClass = (typeof settings.hClass == "string" && settings.hClass.length > 0);
		
		// ����������װ��ģ��Ԫ��
		var wrapperElementTemplate = $("<" + settings.wrapper + "/>");
		if(hasClass)
		    wrapperElementTemplate.addClass(settings.hClass);
		else if(settings.useDefaultStyle)
		{
		    wrapperElementTemplate.css("color", settings.hColor);
		    if(defaultWrapper == settings.wrapper)
		        wrapperElementTemplate.css("font-style", "normal");
		}

		var emptyStr = "";
		
		// �ָ����ؼ��֣���ȥ���ظ��Ĺؼ���
		var keyWordArray = null;
		if(typeof keyWords == "string") {
		    keyWordArray = keyWords.split(settings.separator);
		}
		else if($.isArray(keyWords)) {
		    keyWordArray = keyWords;
		}
		else {
			keyWordArray = [keyWords];
		}
		    
		// �ӹؼ���������ɾ�����ա��ؼ���
		for(var i = 0; i < keyWordArray.length; i++) {
			var keyWord = keyWordArray[i];
			if(typeof keyWord === 'undefined' || keyWord === null
				|| (typeof keyWord === 'string' && $.trim(keyWord).length === 0)) {
				keyWordArray.splice(i, 1);
			} else {
				keyWordArray[i] = $.trim(keyWord + '');
			}
	    }

	    // �ӹؼ���������ɾ���ظ��ؼ���
	    for(var i = 0; i < keyWordArray.length; i++) {
	        var kewWord = keyWordArray[i];
	        for(var j = keyWordArray.length - 1; j > i; j--) {
	            if(kewWord == keyWordArray[j])
	                keyWordArray.splice(j, 1);
	        }
	    }

	    // ������ʽ�����ַ�
	    var regExpSpecialChars = [
	        {spChar: "\\", escapeChar: "\\\\"},
	        {spChar: "$", escapeChar: "\\$"},
	        {spChar: "(", escapeChar: "\\("},
	        {spChar: ")", escapeChar: "\\)"},
	        {spChar: "*", escapeChar: "\\*"},
	        {spChar: "+", escapeChar: "\\+"},
	        {spChar: ".", escapeChar: "\\."},
	        {spChar: "[", escapeChar: "\\["},
	        {spChar: "?", escapeChar: "\\?"},
	        {spChar: "^", escapeChar: "\\^"},
	        {spChar: "{", escapeChar: "\\{"},
	        {spChar: "|", escapeChar: "\\|"}
	    ];
	    
	    // ������ʽ��HTML ��ǩ
	    var regExpHtmlTag = /<\/?[a-z][a-z0-9]*[^<>]*>/ig;
	    // ������ʽ��HTML ʵ��
	    var regExpHtmlEntity = /&(?:[a-z]+?|#[0-9]+?|#x[0-9a-f]+?);/ig;

	    var div = $("<div />");

		return this.each(function(){
			var target = $(this);
			var source = target.data($.highlighter.__config__.sourceHtmlDataKey);
			if(!source) // ����Ƿ���ڱ���
			{
				source = target.html();
				if(settings.needUnhighlight) // ����Դ����
					target.data($.highlighter.__config__.sourceHtmlDataKey, source);
			}

			var matchResult = null;

			// ��������ʽ���ҳ����� HTML ��ǩ��λ�ã����ŵ�һ��һά������
			var htmlTagPositionArray = [];
			while((matchResult = regExpHtmlTag.exec(source)) != null)
			{
				var position = {start: matchResult.index, end: regExpHtmlTag.lastIndex, tag: matchResult[0]};
				htmlTagPositionArray.push(position);
			}
			
			// ��������ʽ���ҳ����� HTML ʵ���λ�ã����ŵ�һ��һά������
			var htmlEntityPositionArray = [];
			while((matchResult = regExpHtmlEntity.exec(source)) != null)
			{
				var position = {start: matchResult.index, end: regExpHtmlEntity.lastIndex, tag: matchResult[0]};
				htmlEntityPositionArray.push(position);
			}

			// ��������ʽ�ֱ���ҳ����йؼ��ֵ�λ�ã����ŵ�һ��һά������
			var positionArray = [];
			for(var i = 0; i < keyWordArray.length; i++)
			{
				var encodedKeyWord = div.text(keyWordArray[i]).html();
				$.each(regExpSpecialChars, function(index, element){
					encodedKeyWord = encodedKeyWord.replace(element.spChar, element.escapeChar);
				});

				var regExp = new RegExp(encodedKeyWord, "ig");
				while((matchResult = regExp.exec(source)) != null)
				{
					var position = {start: matchResult.index, end: regExp.lastIndex};
					positionArray.push(position);
				}
				
			}

			// HTML ��ǩ��ȥ����Ч�Ĺؼ���λ�ã��ؼ����ڱ�ǩ�ڲ���
			for(var i = positionArray.length - 1; i >= 0; i--)
			{
				var position = positionArray[i];
				for(var j = 0; j < htmlTagPositionArray.length; j++)
				{
					var htmlTagPosition = htmlTagPositionArray[j];
					if(position.start > htmlTagPosition.start && position.end < htmlTagPosition.end)
					{
						positionArray.splice(i, 1);
						break;
					}
				}
			}
			
			// HTML ʵ�壬ȥ����Ч�Ĺؼ���λ�ã��ؼ�����ʵ���ڲ�����ʵ���ཻ��
			for(var i = positionArray.length - 1; i >= 0; i--)
			{
				var position = positionArray[i];
				for(var j = 0; j < htmlEntityPositionArray.length; j++)
				{
					var htmlEntityPosition = htmlEntityPositionArray[j];
					if((position.start > htmlEntityPosition.start && position.end <= htmlEntityPosition.end)
						|| (position.start >= htmlEntityPosition.start && position.end < htmlEntityPosition.end))
					{
						positionArray.splice(i, 1);
						break;
					}
					
					if((position.start > htmlEntityPosition.start && position.start < htmlEntityPosition.end &&  position.end > htmlEntityPosition.end)
						|| (position.start < htmlEntityPosition.start && position.end > htmlEntityPosition.start &&  position.end < htmlEntityPosition.end))
					{
						positionArray.splice(i, 1);
						break;
					}
				}
			}
			
			// ѭ���ж�ǰ���λ��������λ���Ƿ�������ڻ��ཻ��������ڣ���ϲ���Щλ�÷�Χ��
			var positions = []; // �������յ�λ�÷�Χ
			for(var i = 0; i < positionArray.length; i++)
			{
				var position = positionArray[i];
				for(var j = positionArray.length - 1; j > i; j--)
				{
					var anotherPosition = positionArray[j];
					// 1. �����λ���Ƿ���ǰ���λ�����ұ��ཻ������
					if(position.start <= anotherPosition.start && position.end >= anotherPosition.start && position.end < anotherPosition.end)
					{
						position.end = anotherPosition.end;
						positionArray.splice(j, 1);
						continue;
					}
						
					// 2. �����λ���Ƿ���ǰ���λ��������ཻ������
					if(anotherPosition.start < position.start && anotherPosition.end >= position.start && anotherPosition.end <= position.end)
					{
						position.start = anotherPosition.start;
						positionArray.splice(j, 1);
						continue;
					}
					
					// 3. �����λ���Ƿ���ǰ���λ���ڲ�
					if(position.start <= anotherPosition.start && position.end >= anotherPosition.end)
					{
						positionArray.splice(j, 1);
						continue;
					}
					
					// 4. ǰ���λ���Ƿ��ں����λ���ڲ�
					if(position.start >= anotherPosition.start && position.end <= anotherPosition.end)
					{
						position.start = anotherPosition.start;
						position.end = anotherPosition.end;
						positionArray.splice(j, 1);
						continue;
					}
				}
				
				positions.push(position);
			}
			
			// ��λ�����鰴�մ�С��������
			positions.sort(function(p1, p2){
			    return p1.start - p2.start;
			});
			
			// ��� Wrapper �����ø�����ʽ
			var stringBuffer = [];
			var offset = 0;
			$.each(positions, function(index, position){
			    if(offset < position.start)
			        stringBuffer.push(source.substring(offset, position.start));
			    
			    div.empty().append(wrapperElementTemplate.clone().html(source.substring(position.start, position.end)));
			    stringBuffer.push(div.html());
			    
			    offset = position.end;
			});
			
			if(offset < source.length)
			    stringBuffer.push(source.substr(offset));
			
			target.html(stringBuffer.join(emptyStr));
		});
	};

	/**
	 * ȡ������
	 */
	$.fn.unhighlight = function() {
		return this.each(function(){
			var target = $(this);
			var source = target.data($.highlighter.__config__.sourceHtmlDataKey);
			if(source)
			{
				target.html(source);
				target.removeData($.highlighter.__config__.sourceHtmlDataKey);
			}
		});
	};
})(jQuery);