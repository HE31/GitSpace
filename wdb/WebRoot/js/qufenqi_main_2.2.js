/**
 * ADLION  FUCHE
 */
;(function(window, document) {
	window._rs = window._rs ||{};
	_rs.tid="94";//����id
	_rs.version="2.2";
	_rs.isAudience=1;//�Ƿ���Ӫ���� 1���� 0�ر�
    window.rs_main = {
                rsurl: (('https:' === document.location.protocol) ? 'https://': 'http://') + "dmp.kejet.net/j?",
                sudienceUrl: (('https:' === document.location.protocol) ? 'https://': 'http://') + "dmp.kejet.net/ad/qufenqi_audience_2.2.js",
                timer:null,//��ʱ
                timeout:5000,//��ʱʱ��
                //�����ú���
                init: function() {
                        if (typeof(_rs.cart) != "undefined") { //���ﳵ
                                rs_main.post(this.rsurl + rs_main.getCart(), true,function(){});
                        }
                        if (typeof(_rs.good) != "undefined") { //��Ʒ����
                                rs_main.post(this.rsurl + rs_main.getProduct(), true,null);
                        }
                        if (typeof(_rs.order) != "undefined") { //����
                                rs_main.post(this.rsurl + rs_main.getOrder(), true,null);
                        }
                        if(typeof(_rs.cart)== "undefined" && typeof(_rs.good) == "undefined" && typeof(_rs.order) == "undefined"){
                        	rs_main.post(this.rsurl + rs_main.getBehavior(), true,null);
                        }
                        if(_rs.isAudience){
							 rs_main.getAudience();
						}
                },
                getAudience:function(){//Ӫ����js����
                	rs_main.post(this.sudienceUrl, false,null);
                },
                getToke: function() { //toke��֤
                        var base64Chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';
                        var domain = window.location.host;
                        domain = domain.substring(domain.indexOf(".") + 1, domain.length);
                        var outputArray = new Array();
                        for (var i = 0; i < domain.length; i++) {
                                var temp = domain.charAt(i).toUpperCase();
                                outputArray.push(base64Chars.charAt((temp.charCodeAt() >> 2)));
                        }
                        var vResult = outputArray.join('');
                        return vResult;
                },
                getRandom: function() { //�����
                        return Math.random();
                },
                post: function(strurl, isImg, c) {
                        if (isImg) { //����ͼƬ��ʽ�첽����
                                var m = Math.round(Math.random() * 9999),
                                n = (new Date()).getTime() + '_' + m,
                                i = window[n] = new Image();
                                i.src = strurl;
                                i.onerror = function() {
                                    window[n] = null;
                                    if (c) c && c();
                                };
                                i.onload = i.onreadystatechange = function(e) {
                                    if (!i.readyState || i.readyState === 'loaded' || i.readyState === 'complete') {
                                        if (c) c && c();
                                        i.onload = i.onreadystatechange = null;
                                    }
                                };
                        }  else { //����js�ļ�
	                     	   var done = false;
	                           var js = document.createElement('script');
	                           js.type = 'text/javascript';
	                           js.src = strurl;
	                           document.getElementsByTagName('head')[0].appendChild(js);
	                           //��ʱɾ�����
	                           timer=setTimeout(function(){document.getElementsByTagName('head')[0].removeChild(js);},rs_main.timeout);  
	                           js.onload =  function handleLoad() {
	                               if (!done) {//�ɹ�
	                                   done = true;
	                                   //�����ʱ
	                                   clearTimeout(timer);
	                               }
	                           };
	                           js.onreadystatechange =  function handleReadyStateChange() {
	                               var state;
	                               if (!done) {
	                                   state = js.readyState;
	                                   if (state === "complete") {
	                                       handleLoad();
	                                   }
	                               }
	                           };
	                           js.onerror =  function handleError() {
	                               if (!done) {//ʧ��
	                                   done = true;
	                               }
	                           };
                        }
                },
                getKeys: function(obj) { //��ȡobjet ����� key
                        if (Object.keys) {
                                return Object.keys(obj);
                        }
                        var keys = [];
                        for (var key in obj) {
                                if (obj.hasOwnProperty(key)) {
                                        keys.push(key);
                                }
                        }
                        return keys;
                },
                serialize: function(dntobj, objs) { //���л� ȫ����������pi��e
                        var temp = rs_main.getKeys(objs);
                        var newtemp = [];
                        var q = [];
                        for (var i = 0; i < temp.length; i++) {
                                var b = false;
                                for (var x = 0; x < dntobj.length; x++) {
                                        if (dntobj[x] == temp[i]) {
                                                b = true;
                                        }
                                }
                                if (b == false) {
                                        newtemp.push(temp[i]);
                                }
                        }
                        for (var i = 0; i < newtemp.length; i++) {
                                q.push(newtemp[i] + "=" + encodeURIComponent(objs[newtemp[i]]));
                        }
                        q = q.join("&");
                        return q;
                },
                //���л�pi���� gΪobject  	var h = ["pcode", "name", "category", "category_id", "category_url", "price", "discount_price", "img_url", "productUrl", "brand", "brand_img", "brand_url", "warehouse","soldOut","extend"];
                itemInfo: function(h, g) {
                        var d = [],p;
                        switch (typeof g) {
                        case "string":
                                p = g;
                                break;
                        case "object":
                                for (var e = 0; e < h.length; e++) {
                                        var o = g[h[e]] || "";
                                        o = o.toString();
                                        d.push(encodeURIComponent(o));
                                }
                                p = d.join(",");
                                break;
                        case "number":
                                p = g;
                                break;
                        default:
                                return p = "";
                        }
                        return p;
                },
                getextend: function() {

                        return encodeURIComponent(rs_main.getLast("e", _rs.goods));

                },
                getProduct: function() { //��Ʒ��ϸ �����ṩ�ӿ�
                        if (typeof(window._rs.good) != "undefined") {
                                var h = ["pcode", "name", "category", "category_id", "category_url", "price", "discount_price", "img_url", "productUrl", "brand", "brand_img", "brand_url", "warehouse", "soldOut", "extend"];
                                var good = encodeURIComponent(rs_main.itemInfo(h, _rs.good.goods));
                                var no = ["goods"];

                                var xx = "t=" + _rs.tid + "&p=" + _rs.good.goods.pcode + "&good=" + good + "&r=" + encodeURIComponent(rs_main.getRefer())+"&u=" + encodeURIComponent(document.location.href) + "&" + rs_main.serialize(no, _rs.good) +"&v="+_rs.version+"&rd=" + rs_main.getRandom();

                                return xx;
                                //rs_main.post("http://v.kejet.net?"+xx,true,null);
                        } else {
                                return "";
                        }

                },
                getBehavior: function() { //��ȡĳ����վ�ľ���������Ժ�����Ҫ��ȡ�����ֶΣ��ڴ˺�����ӡ�
                	var xx = "t=" + _rs.tid + "&r=" + encodeURIComponent(rs_main.getRefer()) + "&u=" + encodeURIComponent(document.location.href) +"&v="+_rs.version+"&rd=" + rs_main.getRandom();
                     return xx;
                },
                getOrder: function() { //��Ҫ���̿ͻ���ϣ����õ��̽ӿ���Ϣ��ȡ����װorder;
                        if (typeof(_rs.order) != "undefined") {
                                var xx = rs_main.serialize([], _rs.order);
                                xx = "t=" + _rs.tid + "&r=" + encodeURIComponent(rs_main.getRefer()) + "&u=" + encodeURIComponent(document.location.href) + "&" + xx +"&v="+_rs.version+"&rd=" + rs_main.getRandom();
                                return xx;
                        } else {
                                return "";
                        }
                },
                getCart: function() { //��Ҫ���̿ͻ���Ϲ��ﳵ�ش�
                        if (typeof(_rs.cart) != "undefined") {
                                var xx = rs_main.serialize([], _rs.cart);
                                xx = "t=" + _rs.tid + "&r=" + encodeURIComponent(rs_main.getRefer()) + "&u=" + encodeURIComponent(document.location.href) + "&" + xx +"&v="+_rs.version+ "&rd=" + rs_main.getRandom();
                                return xx;
                        } else {
                                return "";
                        }
                },
                getRefer: function() { // ��ȡ����ҳ����Ϣ
                        var reqRefer = document.referrer;
                        reqRefer == location.href && (reqRefer = '');
                        try {
                                reqRefer = '' == reqRefer ? opener.location: reqRefer;
                                reqRefer = '' == reqRefer ? '-': reqRefer;
                        } catch(e) {
                                reqRefer = '-';
                        }
                        return reqRefer;
                },
                getstrReg: function getstrReg(str) { //ȥ���������
                        var pattern = new RegExp("[` ~!@#$^&*()=|{}':;',\\[\\]./?~��@#��������&*��������|{}��������������'��������\\t\\n\\r\"]");
                        var rs = "";
                        for (var i = 0; i < str.length; i++) {
                                rs = rs + str.substr(i, 1).replace(pattern, '');
                        }
                        return rs;
                },
                trim: function(str) { // ȥ���������߿ո� �س�
                        str = str.replace(/[\r\n]/g, "");
                        return str.replace(/(^\s*)|(\s*$)/, "");
                },
                isString: function(obj) { // �ж��ǲ���String����
                        return (obj != null) && (obj != undefined) && (typeof obj == 'string') && (obj.constructor == String);
                },
                isNumber: function(obj) { // �ж��Ƿ�������
                        return (typeof obj == 'number') && (obj.constructor == Number);
                },
                isDate: function(obj) { // �ж��Ƿ�������
                        return obj && (typeof obj == 'object') && (obj.constructor == Date);
                },
                isArray: function(obj) { //�ж��Ƿ�������
                        return obj && (typeof obj == 'object') && (obj.constructor == Array);
                },
                isObject: function(obj) { //�ж��Ƿ��Ƕ���
                        return obj && (typeof obj == 'object') && (obj.constructor == Object);
                },
                getParamjson: function(obj, flag) { // ����ת������    flag�Ƿ����64����
                        var retVal = null;
                        if (obj) {
                                if (rs_main.isString(obj) || rs_main.isNumber(obj)) {
                                        retVal = obj;
                                } else {
                                        if (rs_main.isObject(obj)) {
                                                var tmpStr = '{';
                                                for (var key in obj) {
                                                        if (obj[key] != null && obj[key] != undefined) {
                                                                var tmpObj = obj[key];
                                                                if (rs_main.isArray(tmpObj)) {
                                                                        tmpObj = tmpObj.join(',');
                                                                } else {
                                                                        if (rs_main.isDate(tmpObj)) {
                                                                                tmpObj = tmpObj.getTime();
                                                                        }
                                                                }
                                                                tmpStr += "\"" + key + '\":\"' + tmpObj + '\",';
                                                        }
                                                }
                                                tmpStr = tmpStr.substring(0, tmpStr.length - 1) + "}";
                                                retVal = tmpStr;
                                        } else {
                                                if (rs_main.isArray(obj)) {
                                                        if (obj != null && obj.length > 0) {
                                                                retVal = obj.join(',');
                                                        }
                                                } else {
                                                        retVal = obj.toString();
                                                }
                                        }
                                }
                        }
                        if (!retVal) {
                                retVal = '-';
                        }
                        if (flag) {
                                retVal = encodeURIComponent(retVal);
                                retVal = rs_main.base64Encode(retVal);
                        }
                        return retVal;
                },
                base64Encode: function(inputString) { //base64����
                        var base64Chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';
                        var outputArray = new Array();
                        for (var i = 0; i <= (inputString.length - 1); i += 3) {
                                var byte1 = inputString.charCodeAt(i);
                                var byte2 = inputString.charCodeAt(i + 1);
                                var byte3 = inputString.charCodeAt(i + 2);
                                var encodedCharIndex1 = byte1 >> 2;
                                var encodedCharIndex2 = ((byte1 & 3) << 4) | (byte2 >> 4);
                                var encodedCharIndex3 = ((byte2 & 15) << 2) | (byte3 >> 6);
                                var encodedCharIndex4 = byte3 & 63;
                                if (isNaN(byte2)) {
                                        encodedCharIndex3 = encodedCharIndex4 = 64;
                                } else if (isNaN(byte3)) {
                                        encodedCharIndex4 = 64;
                                }
                                outputArray.push(base64Chars.charAt(encodedCharIndex1));
                                outputArray.push(base64Chars.charAt(encodedCharIndex2));
                                outputArray.push(base64Chars.charAt(encodedCharIndex3));
                                outputArray.push(base64Chars.charAt(encodedCharIndex4));
                        }
                        var vResult = outputArray.join('');
                        vResult = vResult.replace(/\+/, '%2B');
                        return vResult;
                }
        };
        rs_main.init();
} (window, document));