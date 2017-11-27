/**
 * aixuedai甯哥敤宸ュ叿绫绘柟娉�
 */
define('module/util',['jquery'], function($) {

	$.AXD = $.AXD || {
		versions: "aixuedai1.0"
	};
	$.AXD.util = {
		//鍒ゆ柇鏄惁ie6
		isIE6: function() {
			return ($.browser.msie && $.browser.version == "6.0") ? true : false
		},
		//鍒ゆ柇鏄惁鏄嫻鏋滄墜鎸佽澶�
		isIOS: function() {
			return /\((iPhone|iPad|iPod)/i.test(navigator.userAgent);
		},
		// 鏍￠獙鏁版嵁鐨勫悎娉曟�
		isValidReg: function(chars) {
			var re = /<|>|\[|\]|\{|\}|銆巪銆弢鈥粅鈼媩鈼弢鈼巪搂|鈻硘鈻瞸鈽唡鈽厊鈼噟鈼唡鈻鈻紎銑锕媩鈯晐鈯檤銆抾銊厊銊唡銊噟銊坾銊墊銊妡銊媩銊寍銊峾銊巪銊弢銊恷銊憒銊抾銊搢銊攟銊晐銊東銊梶銊榺銊檤銊殀銊泑銊渱銊潀銊瀨銊焲銊銊銊銊銊銊銊▅銊﹟鈻爘鈻剕鈻唡\*|@|#|\^|\\/;
			if (re.test(chars) == true) {
				return false;
			} else {
				return true;
			}
		},
		// 鏍￠獙URL鐨勫悎娉曟�
		isValidURL: function(chars) {
			var re = /^([hH][tT]{2}[pP]:\/\/|[hH][tT]{2}[pP][sS]:\/\/)(\S+\.\S+)$/;
			if (!$.AXD.util.isNULL(chars)) {
				chars = $.AXD.util.trim(chars);
				if (chars.match(re) == null)
					return false;
				else
					return true;
			}
			return false;
		},
		// 鏍￠獙鍩熷悕鐨勫悎娉曟�
		isValidDomain: function(chars) {
			var re = /^(\S+\.\S+)$/;
			if (!$.AXD.util.isNULL(chars)) {
				chars = $.AXD.util.trim(chars);
				if (chars.match(re) == null)
					return false;
				else
					return true;
			}
			return false;
		},
		// 鏍￠獙Email鐨勫悎娉曟�
		isEmail: function(chars) {
			var re = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			if (!re.test(chars)) {
				return false;
			} else {
				return true;
			}
		},
		//鏍￠獙鎵嬫満鍙风爜鍚堟硶鎬�
		isPhoneNumber: function(chars) {
			//var re = /^(0|86|17951)?(13[0-9]|15[0-9]|17[678]|18[0-9]|14[57])[0-9]{8}$/;
			var re = /^[0-9]{11}$/;
			if (!re.test(chars)) {
				return false;
			} else {
				return true;
			}
		},
		//鏍￠獙鏃ユ湡鏍煎紡,渚嬪2012-12-12
		isDate: function(chars) {
			var re = /^(\d{4})\-(\d{1,2})\-(\d{1,2})$/;
			if (!re.test(chars)) {
				return false;
			} else {
				return true;
			}
		},
		// 鏍￠獙鏁板瓧鐨勫悎娉曟�
		isNumber: function(chars) {
			var re = /^\d*$/;
			if (chars.match(re) == null)
				return false;
			else
				return true;
		},
		//鏍￠獙qq鐨勫悎娉曟�
		isQq: function(chars) {
			var re = /^\d{5,10}$/;
			if (!re.test(chars)) {
				return false;
			} else {
				return true;
			}
		},
		// 鏍￠獙鍟嗗搧浠锋牸
		isDecimal: function(chars) {
			var re = /^\d{0,8}\.{0,1}(\d{1,2})?$/;
			if (chars.match(re) == null)
				return false;
			else
				return true;
		},
		// 鏍￠獙閭紪鐨勫悎娉曟�
		isValidPost: function(chars) {
			var re = /^\d{6}$/;
			if (chars.match(re) == null)
				return false;
			else
				return true;
		},
		// 鏍￠獙韬唤璇佺殑鍚堟硶鎬�
		isCERT: function(chars) {
			var re = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
			if (chars.match(re) == null)
				return false;
			else
				return true;
		},
		//鑾峰彇韬唤璇佸嚭鐢熷勾浠�
		getBrithday: function(iIdNo) {
			var y = "";
			if (iIdNo.length == 15) {
				y = "19" + iIdNo.substring(6, 8);
			} else {
				y = iIdNo.substring(6, 10);
			}
			return y;
		},
		// 鏍￠獙韬唤璇佺殑鍚堟硶鎬�
		isAdult: function(iIdNo) {
			var b = parseInt($.AXD.util.getBrithday(iIdNo));
			var y = parseInt(new Date().getFullYear());
			if (y - b >= 18) {
				return true;
			} else {
				return false;
			}
		},
		// 鏍￠獙鍑鸿韩鏃ユ湡鐨勫悎娉曟�
		isBirthday: function(chars) {
			var re = /\d{4}-\d{2}-\d{2}/;
			if (chars.match(re) == null)
				return false;
			else
				return true;
		},
		//鑾峰彇缃戝潃鍙傛暟鍊�
		requestPrameVal: function(paras) {
			var url = location.href;
			var paraString = url.substring(url.indexOf("?") + 1, url.length).split("&");
			var paraObj = {}
			for (i = 0; j = paraString[i]; i++) {
				paraObj[j.substring(0, j.indexOf("=")).toLowerCase()] = j.substring(j.indexOf("=") + 1, j.length);
			}
			var returnValue = paraObj[paras.toLowerCase()];
			if (typeof(returnValue) == "undefined") {
				return "";
			} else {
				return returnValue;
			}
		},
		// 鍘绘帀鏁版嵁鐨勯灏剧┖瀛楃 $.AXD.util.trim(str)
		trim: function(str) {
			return str.replace(/(^\s*)|(\s*$)/g, "");
		},
		lTrim: function(str) {
			return str.replace(/(^\s*)/g, "");
		},
		rTrim: function(str) {
			return str.replace(/(\s*$)/g, "");
		},
		// 鏍￠獙鏁版嵁鏄惁涓虹┖锛堝綋鏁版嵁涓虹┖瀛楃鏃朵篃涓篘ULL锛�
		isNULL: function(chars) {
			if (chars == null)
				return true;
			if ($.AXD.util.trim(chars).length == 0)
				return true;
			return false;
		},
		// 鏍￠獙鏄惁鏄暣鏁�$.AXD.util.isInt(str)
		isInt: function(str) {
			var reg = /^(-|\+)?\d+$/;
			return reg.test(str);
		},
		//鑾峰彇瀛楃涓查暱搴�
		getMsgLength: function(str) {
			var num = 0;
			var strLen = str.length;
			for (var i = 0; i < strLen; i++) {
				var c = str.charCodeAt(i);
				if ((c >= 0x0001 && c <= 0x007e) || (0xff60 <= c && c <= 0xff9f)) {
					num += 0.5;
				} else {
					num += 1;
				}
			}
			return num;
		},
		//checkbox鍏ㄩ�,鍙傛暟锛歠ield-闇�鎿嶄綔鐨勫璞�
		checkAll: function(field) {
			if (field != null) {
				for (i = 0; i < field.length; i++) {
					field[i].checked = true;
				}
			}
		},
		//checkbox鍏ㄥ彇娑�鍙傛暟锛歠ield-闇�鎿嶄綔鐨勫璞�
		uncheckAll: function(field) {
			if (field != null) {
				for (i = 0; i < field.length; i++) {
					field[i].checked = false;
				}
			}
		},
		getWordLength: function(str) {
			str = $.AXD.util.trim(str);
			var theLen = 0,
				strLen = 0;
			strLen = str.replace(/[^\x00-\xff]/g, "**").length;
			theLen = parseInt(strLen / 2) == (strLen / 2) ? (strLen / 2) : parseInt(strLen / 2) + 1;
			return theLen;
		},
		//$.AXD.util.getDomain(url)
		getDomain: function(url) {
			var domain = "null";
			if (typeof url == "undefined" || null == url) {
				url = window.location.href;
			}
			var regex = /.*\:\/\/([^\/]*).*/;
			var match = url.match(regex);
			if (typeof match != "undefined" && null != match) {
				domain = match[1];
			}
			return domain;
		},
		addFavorite: function(site, siteName) {
			var ctrl = (navigator.userAgent.toLowerCase()).indexOf('mac') != -1 ? 'Command/Cmd' : 'CTRL';
			if (document.all) {
				window.external.addFavorite(site, siteName)
			} else if (window.sidebar) {
				window.sidebar.addPanel(site, siteName, "")
			} else {銆��銆�� //娣诲姞鏀惰棌鐨勫揩鎹烽敭
				alert('鎮ㄥ彲浠ュ皾璇曢�杩囧揩鎹烽敭' + ctrl + ' + D 鍔犲叆鍒版敹钘忓す~')
			}

		},
		//璁＄畻n澶╀箣鍚庣殑鏃堕棿锛岃繑鍥瀤xxx-xx-xx鏍煎紡
		addNDays: function(startday, day) {
			var st = new Date(Date.parse(startday.replace(/-/g, "/")));
			st.setDate(st.getDate() + parseInt(day));
			return st.getFullYear() + "-" + (st.getMonth() + 1) + "-" + st.getDate();
		},
		//鑾峰彇鍙傛暟鍊�
		getUrlParam: function(paramName) {
			var reg = new RegExp("(^|&)" + paramName + "=([^&]*)(&|$)");
			var r = window.location.search.substr(1).match(reg);
			if (r != null) return unescape(r[2]);
			return null;
		},
		//鑾峰彇dom瀵硅薄鐨勫綋鍓嶄綅缃�
		getPosition: function(ele) {
			var top = ele.offset().top,
				left = ele.offset().left,
				bottom = top + ele.outerHeight(),
				right = left + ele.outerWidth(),
				lmid = left + ele.outerWidth() / 2,
				vmid = top + ele.outerHeight() / 2;

			// iPad position fix
			if (/iPad/i.test(navigator.userAgent)) {
				top -= $(window).scrollTop();
				bottom -= $(window).scrollTop();
				vmid -= $(window).scrollTop();
			}
			var position = {
				leftTop: function() {
					return {
						x: left,
						y: top
					}
				},
				leftMid: function() {
					return {
						x: left,
						y: vmid
					}
				},
				leftBottom: function() {
					return {
						x: left,
						y: bottom
					}
				},
				topMid: function() {
					return {
						x: lmid,
						y: top
					}
				},
				rightTop: function() {
					return {
						x: right,
						y: top
					}
				},
				rightMid: function() {
					return {
						x: right,
						y: vmid
					}
				},
				rightBottom: function() {
					return {
						x: right,
						y: bottom
					}
				},
				MidBottom: function() {
					return {
						x: lmid,
						y: bottom
					}
				},
				middle: function() {
					return {
						x: lmid,
						y: vmid
					}
				}
			};
			return position;
		},
		// 灏哢rl鏌ヨ瀛楃涓茶浆鎹㈡垚瀵硅薄
		queryTransform: function() {
			var g = location.search.slice(1).split("&");
			var t = {};
			var m = "";
			for (var e = 0, o = g.length; e < o; e++) {
				m = g[e].split("=");
				if (m.length > 1) {
					t[m[0]] = m[1]
				}
			}
			return t;
		},
		//鍒朵繚鐣�浣嶅皬鏁帮紝濡傦細2锛屼細鍦�鍚庨潰琛ヤ笂00.鍗�.00
		toDecimal2: function(x) {
			var f = parseFloat(x);
			if (isNaN(f)) {
				return false;
			}
			var f = Math.round(x * 100) / 100;
			var s = f.toString();
			var rs = s.indexOf('.');
			if (rs < 0) {
				rs = s.length;
				s += '.';
			}
			while (s.length <= rs + 2) {
				s += '0';
			}
			return s;
		}
	}



	$.fn.extend({
		//鎸夐挳璁剧疆涓篸isabled
		disableBtn: function() {
			$(this).addClass('disabled');
		},
		//鎸夐挳璁剧疆涓篹nabled
		enableBtn: function() {
			var self = $(this);
			setTimeout(function() {
				self.removeClass('disabled');
			}, 100);
		}
	});

	if (!Array.indexOf) {
		Array.prototype.indexOf = function(obj) {
			for (var i = 0; i < this.length; i++) {
				if (this[i] == obj) {
					return i;
				}
			}
			return -1;
		}
	}
});
/**
 * aixuedai甯哥敤宸ュ叿绫绘柟娉�
 */
define('module/dialog',['jquery', 'module/util', 'jqtools', 'overlay'], function($) {


	$.AXD.dialog = {
		conf: {
			id: "J_AXDDialog",
			title: "鎻愮ず",
			html: "",
			callback: function() {},
			showtitle: true,
			showclose: true,
			showMask: true,
			width: '',
			closecallback: function() {}
		},
		init: function(opt) {
			var conf = $.AXD.dialog.conf;
			if (opt) {
				$.extend(conf, opt);
			}

			var dialogId = conf.id;
			var witdthStr = conf.width !== '' ? 'width:' + conf.width + '!important' : '';
			if (!$("#" + dialogId)[0]) {
				var html = "";
				html += '<div id="' + dialogId + '" class="g-dialog" style="' + witdthStr + '">';
				if (conf.showtitle) {
					html += '<div class="hd">';
					html += '<h3>' + conf.title + '</h3>';
					html += '</div>';
				}
				html += '<div class="bd">';
				html += conf.html;
				html += '</div>';
				if (conf.showclose) {
					html += '<a class="common-icon close" href="javascript:;"></a>';
				}
				html += '</div>';
				$("body").append(html);
				var overlayOpt = {
					top: 'center',
					oneInstance: false,
					closeOnClick: false,
					load: true,
					closeOnEsc: false
				};
				if (conf.showMask) {
					overlayOpt.mask = {
						color: '#000',
						loadSpeed: 200,
						closeSpeed: 0,
						opacity: 0.3
					};
				}
				$("#" + dialogId).overlay(overlayOpt);
				if(conf.showclose == false){
					$("#" + dialogId + " .close").remove();
				}
				$("#" + dialogId + " .close").unbind().bind("click", function() {
					$("#" + dialogId).data("overlay").close();
					$("#" + dialogId).remove();
					conf.closecallback();
				});

				$("#" + dialogId + " .close-dialog").bind("click", function() {
					$("#" + dialogId).data("overlay").close();
					$("#" + dialogId).remove();
				});
				// 鍥炶皟鍑芥暟
				conf.callback();
			} else {
				$("#" + dialogId).data("overlay").load();
			}
		},
		confirm: function(text, callback) {
			var html = '<div class="clearfix unit mt10" style="height:60px;font-size:16px;text-align: center;">' + text + '</div>';
			html += '<div class="clearfix unit mt10" style="width: 306px;"><a href="javascript:;" class="btn common-btn mr10 gray fl close-dialog">鍚�/a><a href="javascript:;" class="btn common-btn  orange fl J_Save">鏄�/a></div>';
			$.AXD.dialog.init({
				id: 'J_Confirm',
				title: '鎻愮ず',
				html: html,
				showtitle: true,
				width: '500px',
				callback: function() {
					$('#J_Confirm .J_Save').off('click').live('click', function() {

						if (typeof(callback) === 'function') {
							callback();
						}
					});
				}
			});
		},
		/*
			* 浣跨敤鏍煎紡锛�.AXD.dialog.complete(html, function(){...})
			html += '<div>';
		    html +=		'<h3 class="fs18 tac">鐧诲綍瀵嗙爜淇敼鎴愬姛锛�/h3>';
		    html +=		'<div class="mt20 tac intro-color fs14"><em class="red-color">3</em>绉掑悗璺宠浆鑷崇櫥褰曠晫闈紝璇蜂娇鐢ㄦ柊鐨勭櫥褰曞瘑鐮侀噸鏂扮櫥褰曘�</div>';
			html += '</div>';
			*/
		complete: function(html, callback) {
			$.AXD.dialog.init({
				id: 'J_CompleteDialog',
				title: '',
				html: html,
				showtitle:false,
				showclose:false,
				callback: function() {
					var index = 3;
					var dialogTimer = setInterval(function() {
						index--;
						$('#J_CompleteDialog em').text(index);
						if (index == 0) {
							$('#J_CompleteDialog').data('overlay').close();
							clearInterval(dialogTimer);
							if (typeof(callback) === 'function') {
								callback();
							}
						}
					}, 1000);
				}
			});
		}

	}


});
/**
 * aixuedai甯哥敤jquery鎵╁睍鏂规硶
 */
define('module/extendfn',['jquery', 'module/util'], function($) {

	$.fn.extend({
		//涓嬫媺鏂规硶
		dropdown: function(options) {
			var settings = {
				classNm: '.dropdown',
				timer: null,
				fadeSpeed: 100,
				duration: 2000
			};
			if (options) {
				$.extend(settings, options);
			}
			var trrigers = this;
			var $dropdown = $(settings.classNm);
			trrigers.each(function() {

				var self = $(this);
				self.hover(function() {
					clearTimeout(settings.timer);
					$dropdown.fadeIn(settings.fadeSpeed);
				}, function() {
					settings.timer = setTimeout(function() {
						$dropdown.fadeOut(settings.fadeSpeed);
					}, settings.duration);

				});
				$dropdown.hover(function() {
					clearTimeout(settings.timer);
					$dropdown.show();
				}, function() {
					settings.timer = setTimeout(function() {
						$dropdown.fadeOut(settings.fadeSpeed);
					}, settings.duration);
				});

			});
		},
		//鎻掑叆鍏夋爣
		insertAtCursor: function(myValue) {
			var $t = $(this)[0];
			if (document.selection) {
				this.focus();
				sel = document.selection.createRange();
				sel.text = myValue;
				this.focus();
			} else if ($t.selectionStart || $t.selectionStart == '0') {
				var startPos = $t.selectionStart;
				var endPos = $t.selectionEnd;
				var scrollTop = $t.scrollTop;
				$t.value = $t.value.substring(0, startPos) + myValue + $t.value.substring(endPos, $t.value.length);
				this.focus();
				$t.selectionStart = startPos + myValue.length;
				$t.selectionEnd = startPos + myValue.length;
				$t.scrollTop = scrollTop;
			} else {
				this.value += myValue;
				this.focus();
			}
		},
		//鎸夐挳璁剧疆涓篸isabled
		disableBtn: function() {
			$(this).addClass('disabled');
		},
		//鎸夐挳璁剧疆涓篹nabled
		enableBtn: function() {
			var self = $(this);
			setTimeout(function() {
				self.removeClass('disabled');
			}, 500);
		},
		//楠岃瘉鎵嬫満鍙凤紝缁欏嚭楠岃瘉淇℃伅
		validatePhone: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0,
				oldtel: ''
			}, $cfg);
			self.live('blur', function() {
				var v = $.trim(self.val());
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (v == '') {
					errorbox.find('.msg').text('璇疯緭鍏ユ墜鏈哄彿');
					errorbox.show();
					return;
				} else if (!$.AXD.util.isPhoneNumber(v)) {
					errorbox.find('.msg').text('璇疯緭鍏ユ纭殑鎵嬫満鍙�);
					errorbox.show();
					return;
				} else if ($config.oldtel !== '' && 銆� === $config.oldtel) {
					errorbox.find('.msg').text('鏂版墜鏈哄彿涓嶈兘涓庡師鎵嬫満鍙风浉鍚�);
					errorbox.show();
					return;
				} else {
					errorbox.hide();
					rightbox.show();
				}
			});
		},
		//楠岃瘉閫氱敤甯愬彿锛岀粰鍑洪獙璇佷俊鎭�
		validateAcount: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0
			}, $cfg);
			self.live('blur', function() {
				var v = $.trim(self.val());
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (v == '') {
					errorbox.find('.msg').text('璇疯緭鍏ュ笎鍙�);
					errorbox.show();
					return;
				} else {
					errorbox.hide();
				}
			});
		},
		//楠岃瘉閫氱敤瀵嗙爜锛岀粰鍑洪獙璇佷俊鎭�
		validateAcountPassword: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0
			}, $cfg);
			self.live('blur', function() {
				var v = $.trim(self.val());
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (v == '') {
					errorbox.find('.msg').text('璇疯緭鍏ュ瘑鐮�);
					errorbox.show();
					return;
				} else {
					errorbox.hide();
				}
			});
		},
		//楠岃瘉閫氱敤瀵嗙爜锛岀粰鍑洪獙璇佷俊鎭�
		validateNomalName: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0,
				msg: '璇峰～鍐�
			}, $cfg);
			self.live('blur', function() {
				var v = $.trim(self.val());
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (v == '') {
					errorbox.find('.msg').text($config.msg);
					errorbox.show();
					return;
				} else {
					errorbox.hide();
				}
			});
		},
		validatecheckbox: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0
			}, $cfg);
			self.live('blur', function() {
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (!(self.attr('checked') == "checked")) {
					errorbox.find('.msg').text('璇峰厛鍚屾剰鍚堢害');
					errorbox.show();
					return;
				} else {
					errorbox.hide();
				}
			});
		},
		//楠岃瘉鍥惧舰楠岃瘉鐮侊紝缁欏嚭楠岃瘉淇℃伅
		validateVerifyImg: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0
			}, $cfg);
			self.live('blur', function() {
				var v = $.trim(self.val());
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (v == '') {
					errorbox.find('.msg').text('璇疯緭鍏ュ浘褰㈤獙璇佺爜');
					errorbox.show();
					return;
				} else {
					errorbox.hide();
				}
			});
		},
		//鎵嬫満楠岃瘉鐮侊紝缁欏嚭楠岃瘉淇℃伅
		validateTelcode: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0
			}, $cfg);
			self.live('blur', function() {
				var v = $.trim(self.val());
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (v == '') {
					errorbox.find('.msg').text('璇疯緭鍏ユ墜鏈洪獙璇佺爜');
					errorbox.show();
					return;
				} else {
					errorbox.hide();
				}
			});
		},
		//鐖卞垱鐮佸悎娉曟�鍒ゆ柇
		validateAichuangcode: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0
			}, $cfg);
			self.live('blur', function() {
				var v = $.trim(self.val());
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (v.length > 10) {
					errorbox.find('.msg').text('鐖卞垱鐮佹牸寮忎笉姝ｇ‘');
					errorbox.show();
					return;
				}
				if (isNaN(v)) {
					errorbox.find('.msg').text('鐖卞垱鐮佹牸寮忎笉姝ｇ‘');
					errorbox.show();
					return;
				} else {
					errorbox.hide();
				}
			});
		},
		//瀵嗙爜楠岃瘉鐮侊紝缁欏嚭楠岃瘉淇℃伅
		validatePayPassword: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0,
				action: ''
			}, $cfg);
			self.live('blur', function() {
				var v = $.trim(self.val());
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (v == '') {
					errorbox.find('.msg').text('璇疯緭鍏ュ瘑鐮�);
					errorbox.show();
					return;
				}

				if (v.length != 6) {
					errorbox.find('.msg').text('瀵嗙爜闀垮害涓�浣嶆暟瀛�);
					errorbox.show();
					return;
				}

				if (!(/[0-9]+/.test(v))) {
					errorbox.find('.msg').text('瀵嗙爜鐢�浣嶆暟瀛楃粍鎴�);
					errorbox.show();
					return;
				}
				errorbox.hide();

			});
		},
		//杈撳叆鏂板瘑鐮�缁欏嚭楠岃瘉淇℃伅
		validateNPayPassword: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0,
				oldpwd: $('.oldpwd')
			}, $cfg);
			self.live('blur', function() {
				var v = $.trim(self.val());
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (v == '') {
					errorbox.find('.msg').text('璇疯緭鍏ユ柊瀵嗙爜');
					errorbox.show();
					return;
				} else if (v == $.trim($config.oldpwd.val())) {
					errorbox.find('.msg').text('鏂板瘑鐮佷笉鑳藉拰鍘熷瘑鐮佷竴鑷�);
					errorbox.show();
					return;
				}
				if (v.length != 6) {
					errorbox.find('.msg').text('瀵嗙爜闀垮害涓�浣嶆暟瀛�);
					errorbox.show();
					return;
				}

				if (!(/[0-9]+/.test(v))) {
					errorbox.find('.msg').text('瀵嗙爜鐢�浣嶆暟瀛楃粍鎴�);
					errorbox.show();
					return;
				}
				errorbox.hide();
			});
		},
		//瀵嗙爜楠岃瘉鐮侊紝缁欏嚭楠岃瘉淇℃伅
		validatePassword: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0,
				action: ''
			}, $cfg);
			self.live('blur', function() {
				var v = $.trim(self.val());
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (v == '') {
					errorbox.find('.msg').text('璇疯緭鍏ュ瘑鐮�);
					errorbox.show();
					return;
				}
				if ($config.action == 'login' || $config.action == 'modifypassword') {
					return;
				}
				if (v.length < 8) {
					errorbox.find('.msg').text('瀵嗙爜闀垮害涓�-16浣嶆暟瀛�瀛楁瘝缁勫悎鑰屾垚');
					errorbox.show();
					return;
				}
				if (v.length > 16) {
					errorbox.find('.msg').text('瀵嗙爜闀垮害蹇呴』灏忎簬16浣�);
					errorbox.show();
					return;
				}
				if (!(/[a-zA-Z]+/.test(v) && /[0-9]+/.test(v))) {
					errorbox.find('.msg').text('瀵嗙爜鐢�-16浣嶆暟瀛�瀛楁瘝缁勫悎鑰屾垚');
					errorbox.show();
					return;
				}
				errorbox.hide();

			});
		},
		//杈撳叆鏂板瘑鐮�缁欏嚭楠岃瘉淇℃伅
		validateNPassword: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0,
				oldpwd: $('.oldpwd')
			}, $cfg);
			self.live('blur', function() {
				var v = $.trim(self.val());
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (v == '') {
					errorbox.find('.msg').text('璇疯緭鍏ユ柊瀵嗙爜');
					errorbox.show();
					return;
				} else if (v == $.trim($config.oldpwd.val())) {
					errorbox.find('.msg').text('鏂板瘑鐮佷笉鑳藉拰鍘熷瘑鐮佷竴鑷�);
					errorbox.show();
					return;
				} else if (v.length < 8) {
					errorbox.find('.msg').text('瀵嗙爜闀垮害蹇呴』澶т簬8浣�);
					errorbox.show();
					return;
				} else if (v.length > 16) {
					errorbox.find('.msg').text('瀵嗙爜闀垮害蹇呴』灏忎簬16浣�);
					errorbox.show();
					return;
				} else if (!(/[a-zA-Z]+/.test(v) && /[0-9]+/.test(v))) {
					errorbox.find('.msg').text('瀵嗙爜鐢�-16浣嶆暟瀛楋紝鑻辨枃锛岀壒娈婄鍙风粍鍚堣�鎴�);
					errorbox.show();
					return;
				} else {
					errorbox.hide();
				}
			});
		},
		//纭瀵嗙爜楠岃瘉鐮侊紝缁欏嚭楠岃瘉淇℃伅
		validateCPassword: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0,
				pwd: $('.pwd')
			}, $cfg);
			self.live('blur', function() {
				var v = $.trim(self.val());
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (v == '') {
					errorbox.find('.msg').text('璇峰啀娆¤緭鍏ュ瘑鐮�);
					errorbox.show();
					return;
				} else if (v != $.trim($config.pwd.val())) {
					errorbox.find('.msg').text('涓ゆ瀵嗙爜杈撳叆涓嶄竴鑷�);
					errorbox.show();
					return;
				} else {
					errorbox.hide();
				}
			});
		},
		//楠岃瘉濮撳悕锛岀粰鍑洪獙璇佷俊鎭�
		validateName: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0
			}, $cfg);
			self.live('blur', function() {
				var v = $.trim(self.val());
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (v == '') {
					errorbox.find('.msg').text('璇疯緭鍏ョ湡瀹炲鍚�);
					errorbox.show();
					return;
				} else {
					errorbox.hide();
					rightbox.show();
				}
			});
		},
		//楠岃瘉韬唤璇侊紝缁欏嚭楠岃瘉淇℃伅
		validateCert: function($cfg) {
			var self = $(this);
			var $config = $.extend({
				errorclass: '.base-error',
				rightclass: '.base-right',
				parentclass: '.unit',
				index: 0
			}, $cfg);
			self.live('blur', function() {
				var v = $.trim(self.val());
				var errorbox = self.closest($config.parentclass).find($config.errorclass).eq($config.index);
				var rightbox = self.closest($config.parentclass).find($config.rightclass).eq($config.index);
				errorbox.hide();
				rightbox.hide();
				if (v == '') {
					errorbox.find('.msg').text('璇疯緭鍏ヨ韩浠借瘉鍙风爜');
					errorbox.show();
					return;
				}
				$.post(aixuedai.path + 'user/checkCert', {
					cert: v
				}, function(data) {
					if (data) {
						if (data.status == 100) {
							errorbox.hide();
							rightbox.show();
						} else {
							errorbox.find('.msg').text(data.info);
							errorbox.show();
						}

					}
				});

			});
		}



	});

});
/**
 * aixuedai鎻愮ず妗�
 */
define('module/tipshow',['jquery', 'module/util'], function($) {

	$.AXD.tip = {
		conf: {
			timer: null,
			timerLength: 3000,
			tipClass: "tipmodal tipmodal-error"
		},
		show: function(o, text) {
			clearTimeout($.AXD.tip.conf.timer);
			var position = $.AXD.util.getPosition(o).topMid();
			if (!$(".tipbox")[0]) {
				$("body").append('<div class="tipbox "' + text + '></div>');
			}
			$(".tipbox").attr("class", 'tipbox ' + $.AXD.tip.conf.tipClass);
			$(".tipbox").html(text);
			var W = $(".tipbox").outerWidth(),
				H = $(".tipbox").outerHeight();
			$(".tipbox").css({
				left: position.x - W / 2 + "px",
				top: position.y - H - 10 + "px"
			}).fadeIn();
			$.AXD.tip.conf.timer = setTimeout(function() {
				$(".tipbox").fadeOut();
			}, $.AXD.tip.conf.timerLength);
		}
	}

});
//var str = multiline(function(){/*text here*/});

/**
 * aixuedai蹇樿瀵嗙爜
 */
define('module/setPayPassword',['jquery', 'module/util', 'module/extendfn', 'jqtools', 'module/dialog', 'module/tipshow'], function($) {
	$(function() {
		var str_setPay ='<div class="set-paypwd-box pl40">' +
							'<div class="unit clearfix mb20">' +
				                '<label class="fl">韬唤璇佸悗鍥涗綅:</label>' +
				                '<input type="text" ' +
				                		'id="J_Cardid" ' +
				                		'maxlength="4" ' +
				                		'class="base-input fl" '+
				                		'placeholder="璇疯緭鍏ヨ韩浠借瘉鍙峰悗鍥涗綅">'+
				                '<div class="fl base-error">'+
				                	'<span class="regError fs14 mt11 fl"></span>' +
				                	'<span class="msg fl"></span>'+
				               	'</div>' +
				            '</div>' +
				            '<div class="unit clearfix mb20">' +
				                '<label class="fl">鏀粯瀵嗙爜:</label>' +
				                '<input type="password" ' +
				                		'id="J_ModifyPwd_Pay2" ' +
				                		'maxlength="6" ' +
				                		'class="base-input fl" '+
				                		'placeholder="璇疯缃�浣嶆暟瀛楀瘑鐮�>'+
				                '<div class="fl base-error">'+
				                	'<span class="regError fs14 mt11 fl"></span>' +
				                	'<span class="msg fl"></span>'+
				               	'</div>' +
				            '</div>' +
				            '<div class="unit clearfix mb30">' +
				                '<label class="fl">鍐嶈緭涓�:</label>' +
				                '<input type="password" id="J_ModifyCPwd_Pay2" maxlength="6" class="base-input fl">' +
			            		'<div class="fl base-error">' +
			            			'<span class="regError fs14 mt11 fl"></span>' +
			            			'<span class="msg fl"></span>' +
			            		'</div>' +
				            '</div>' +
				            '<p class="mlnext"><a id="J_PwdBtn_Pay2" class="common-btn orange mr30">瀹�鎴�/a></p>' +
	        			'</div>';

		var str_editPay= '<div class="modify-paypwd-box pl40"> <div class="unit clearfix mb20"> <label class="fl">鏃ф敮浠樺瘑鐮�</label> <input type="password" id="J_ModifyOldPwd_Pay" maxlength="6" class="base-input fl" placeholder="璇疯緭鍏ユ棫瀵嗙爜"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div> </div> <div class="unit clearfix mb20"> <label class="fl">鏂版敮浠樺瘑鐮�</label> <input type="password" id="J_ModifyPwd_Pay" maxlength="6" class="base-input fl" placeholder="璇疯缃�浣嶆暟瀛楀瘑鐮�><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div> </div> <div class="unit clearfix mb30"> <label class="fl">鍐嶈緭涓�:</label> <input type="password" id="J_ModifyCPwd_Pay" maxlength="6" class="base-input fl"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div> </div> <p class="mlnext"><a id="J_PwdBtn_Pay" class="common-btn orange mr30 inblock">瀹�鎴�/a><a class="ml20 blue-color eleb mt20 fs14 findPay">蹇樿鏀粯瀵嗙爜锛�/a></p> </div>';
			        
		

		

		$(document).on('click', '.setPay', function() {
			$.AXD.dialog.init({
				id: 'setPaypwd',
				title: '璁剧疆鏀粯瀵嗙爜',
				html: str_setPay,
				showtitle: true,
				width: '650px',
				callback: function() {
					initEditPaypwdDialog2();
				}
			});
		});

		$(document).on('click', '.editPay, .editPay2', function() {
			$.AXD.dialog.init({
				id: 'editPaypwd',
				title: '淇敼鏀粯瀵嗙爜',
				html: str_editPay,
				showtitle: true,
				width: '650px',
				callback: function() {
					initEditPaypwdDialog();
				}
			});
		});


		$(document).on('click', '.findPay', function() {
			$.AXD.dialog.init({
				id: 'findPaygpwd',
				title: '鎵惧洖鏀粯瀵嗙爜',
				html: $('#findpwd').html(),
				showtitle: true,
				width: '680px',
				callback: function() {
					initFindPayPwd();
				}
			});
		});

		function initEditPaypwdDialog() {
			//淇敼鏀粯瀵嗙爜
			$('#J_ModifyOldPwd_Pay').validatePayPassword({
				parentclass: '.modify-paypwd-box',
				index: 0,
				action: 'modifypassword'
			});
			$('#J_ModifyPwd_Pay').validateNPayPassword({
				parentclass: '.modify-paypwd-box',
				index: 1,
				oldpwd: $('#J_ModifyOldPwd_Pay')
			});
			$('#J_ModifyCPwd_Pay').validateCPassword({
				parentclass: '.modify-paypwd-box',
				index: 2,
				pwd: $('#J_ModifyPwd_Pay')
			});
			$('#J_PwdBtn_Pay').click(function() {
				var self = $(this);
				var error = false;
				if (self.hasClass('disabled')) {
					return;
				}
				$('.modify-paypwd-box .base-input').trigger('blur');
				$('.modify-paypwd-box .base-error').each(function() {
					var me = $(this);
					if (me.css('display') == 'block') {
						error = true;
						return;
					}
				});
				if (error) {
					return;
				}
				var oldpassword = $.trim($('#J_ModifyOldPwd_Pay').val());
				var newpassword = $.trim($('#J_ModifyPwd_Pay').val());
				var newcpassword = $.trim($('#J_ModifyCPwd_Pay').val());
				self.disableBtn();
				$.ajax({
					url: '/mall/safe/modifyPayPwd',
					type: 'post',
					dataType: 'json',
					data: {
						password: oldpassword,
						newPwd: newpassword
					},
					success: function(data) {
						if (data) {
							if (data.ret.success === true) {
								var html = '';
								html += '<div>';
								html += '<h3 class="fs18 tac">鏀粯瀵嗙爜淇敼鎴愬姛锛�/h3>';
								html += '<div class="mt20 tac intro-color fs14"><em class="red-color">3</em>绉掑悗鍏抽棴绐楀彛銆�/div>';
								html += '</div>';
								$('#editPaypwd').hide();
								$.AXD.dialog.complete(html, function() {
									window.location.reload();
								});
							} else {
								$.AXD.tip.conf.tipClass = 'tipmodal tipmodal-error';
								$.AXD.tip.show(self, data.ret.resultDes);
								self.enableBtn();
							}
						}
					},
					error: function() {
						$.AXD.tip.conf.tipClass = 'tipmodal tipmodal-error';
						$.AXD.tip.show(self, '鏈嶅姟鍣ㄧ箒蹇欙紝璇风◢鍊欏啀璇�');
						self.enableBtn();
					}
				});
			});

		}

		function initEditPaypwdDialog2() {
			//璁剧疆鏀粯瀵嗙爜
			$('#J_Cardid').validateNomalName({
				parentclass: '.set-paypwd-box',
				index: 0,
				msg:"璇疯緭鍏ヨ韩浠借瘉鍙峰悗鍥涗綅"
			});
			$('#J_ModifyPwd_Pay2').validateNPayPassword({
				parentclass: '.set-paypwd-box',
				index: 1
			});
			$('#J_ModifyCPwd_Pay2').validateCPassword({
				parentclass: '.set-paypwd-box',
				index: 2,
				pwd: $('#J_ModifyPwd_Pay2')
			});
			$('#J_PwdBtn_Pay2').click(function() {
				var self = $(this);
				var error = false;
				if (self.hasClass('disabled')) {
					return;
				}
				$('.set-paypwd-box .base-input').trigger('blur');
				$('.set-paypwd-box .base-error').each(function() {
					var me = $(this);
					if (me.css('display') == 'block') {
						error = true;
						return;
					}
				});
				if (error) {
					return;
				}
				var paypwd = $.trim($('#J_ModifyPwd_Pay2').val());
				var cardid= $.trim($('#J_Cardid').val());
				self.disableBtn();
				$.ajax({
					url: '/mall/safe/paypwd/set',
					type: 'post',
					dataType: 'json',
					data: {
						card: cardid,
						pwd: paypwd
					},
					success: function(data) {
						if (data) {
							if (data.ret.success === true) {
								var html = '';
								html += '<div>';
								html += '<h3 class="fs18 tac">鏀粯瀵嗙爜璁剧疆鎴愬姛锛�/h3>';
								html += '</div>';
								$('#setPaypwd').hide();
								$.AXD.dialog.complete(html, function() {
									window.location.reload();
								});
							} else {
								$.AXD.tip.conf.tipClass = 'tipmodal tipmodal-error';
								$.AXD.tip.show(self, data.ret.resultDes);
								self.enableBtn();
							}
						}
					},
					error: function() {
						$.AXD.tip.conf.tipClass = 'tipmodal tipmodal-error';
						$.AXD.tip.show(self, '鏈嶅姟鍣ㄧ箒蹇欙紝璇风◢鍊欏啀璇�');
						self.enableBtn();
					}
				});
			});

		}

		function initFindPayPwd() {
			//鎵惧洖鏀粯瀵嗙爜
			$('#findPaygpwd .code-btn').getVerifactionCode({
				smstype: 'normal',
				telValue: $('.bangTel').attr('data-tel')
			});
			$('#J_PayCode').validateNomalName({
				parentclass: '.modify-payfind-box',
				index: 0,
				msg: '璇疯緭鍏ラ獙璇佺爜'
			});
			$('#J_ModifyPwd_PayFind').validateNPayPassword({
				parentclass: '.modify-payfind-box',
				index: 1
			});
			$('#J_ModifyCPwd_PayFind').validateCPassword({
				parentclass: '.modify-payfind-box',
				index: 2,
				pwd: $('#J_ModifyPwd_PayFind')
			});
			$('#J_PwdBtn_PayFind').click(function() {
				var self = $(this);
				var error = false;
				if (self.hasClass('disabled')) {
					return;
				}
				$('.modify-payfind-box .base-input').trigger('blur');
				$('.modify-payfind-box .base-error').each(function() {
					var me = $(this);
					if (me.css('display') == 'block') {
						error = true;
						return;
					}
				});
				if (error) {
					return;
				}
				var paycode = $.trim($('#J_PayCode').val());
				var newpwd = $.trim($('#J_ModifyPwd_PayFind').val());
				var newcpwd = $.trim($('#J_ModifyCPwd_PayFind').val());
				self.disableBtn();
				$.ajax({
					url: '/mall/safe/resetPayPwd',
					type: 'post',
					dataType: 'json',
					data: {
						phone: $('.bangTel').attr('data-tel'),
						checkCode: paycode,
						newPwd: newpwd
					},
					success: function(data) {
						if (data) {
							if (data.ret.success === true) {
								var html = '';
								html += '<div>';
								html += '<h3 class="fs18 tac">鎵惧洖鏀粯瀵嗙爜鎴愬姛锛�/h3>';
								html += '<div class="mt20 tac intro-color fs14"><em class="red-color">3</em>绉掑悗鍏抽棴绐楀彛銆�/div>';
								html += '</div>';
								if(window.location.pathname != '/mall/safe/payCenter.html'){
									$('#findPaygpwd').hide();
								}
								$('.g-dialog').remove();
								$.AXD.dialog.complete(html, function() {
									window.location.reload();
								});

							} else {
								$.AXD.tip.conf.tipClass = 'tipmodal tipmodal-error';
								$.AXD.tip.show(self, data.ret.resultDes);
								self.enableBtn();
							}
						}
					},
					error: function() {
						$.AXD.tip.conf.tipClass = 'tipmodal tipmodal-error';
						$.AXD.tip.show(self, '鏈嶅姟鍣ㄧ箒蹇欙紝璇风◢鍊欏啀璇�');
						self.enableBtn();
					}
				});
			});
		}
		$.AXD.initFindPayPwd = initFindPayPwd;
		$.AXD.initFindPayPwdDialog = function(){
			$.AXD.dialog.init({
				id: 'findPaygpwd',
				title: '鎵惧洖鏀粯瀵嗙爜',
				html: $('#findpwd').html(),
				showtitle: true,
				width: '680px',
				callback: function() {
					initFindPayPwd();
				}
			});
		}
		$.AXD.setPaypwd = function(){
			$.AXD.dialog.init({
				id: 'setPaypwd',
				title: '璁剧疆鏀粯瀵嗙爜',
				html: str_setPay,
				showtitle: true,
				width: '650px',
				callback: function() {
					initEditPaypwdDialog2();
				}
			});
		}
	});

});
/**
 * aixuedai 鐢ㄦ埛鐘舵�鍒ゆ柇
 *  
 */
define('module/checkUserStatus',['jquery', 'module/util', 'module/dialog', 'module/setPayPassword'], function($) {

	$.AXD.checkUserStatus = function(self, data,
		callback, errorcallback) {
		var retval = false;
		$.ajax({
			url: '/common/checkUserStatus',
			data: data,
			dataType: 'json',
			type: 'POST',
			async: false,
			success: function(data) {

				if (data.ret.success === false) {
					var strHref = '';
					//login
					if (data.ret.code === 'STATUS10') {
						strHref = '/login.jsp?url=' + window.location.pathname + window.location.search;
						$.AXD.dialog.init({
							id: "J_Dialog",
							title: "",
							showtitle: false,
							width: '500px',
							html: '<div class="pt20 pb20 tac fs16"><h2>璇风櫥鍏�涓夌鍚庤嚜鍔ㄨ烦杞埌鐧诲叆椤甸潰~</h2></div>'
						});
						setTimeout(function() {
							window.location.href = strHref;
						}, 3000);
					} else if (data.ret.code === 'STATUS11') { //鐢ㄦ埛鏈巿淇�
						//strHref =  '/mall/userAuth';
					} else if (data.ret.code === 'STATUS13') { //娌℃湁璁剧疆鏀粯瀵嗙爜
						//show set pay dialog
						$.AXD.setPaypwd();
					} else if (data.ret.code === 'STATUS12') { //鐢ㄦ埛鏈璇�
						strHref = '/mall/goinfo.html?auth=true';
						$.AXD.dialog.init({
							id: "J_Dialog",
							title: "",
							showtitle: false,
							width: '500px',
							html: '<div class="pt20 pb20 tac fs16"><h2>璇烽獙璇佺敤鎴蜂俊鎭�涓夌鍚庤嚜鍔ㄨ烦杞獙璇侀〉闈</h2></div>',
						});
						setTimeout(function() {
							window.location.href = strHref;
						}, 3000);
					}
					retval = false;

				} else {
					//callback();
					retval = true;
				}
			},
			error: function() {
				//errorcallback();
				retval = false;
			}
		});

		return retval;
	}

});
define('module/cartCount',['jquery','module/util'], function($) {

    $(function() {

        function getCartCount() {
            $.ajax({
                url: '/mall/cart/getCartCount',
                type: 'POST',
                dataType: 'json',
                success: function(data) {

                    //if(data.ret.success===true){
                    $('.J_cart').find('b').text(data.cartCount);
                    //} 
                }
            })
        }
        $.AXD.getCartCount = getCartCount;
        
        if (aixuedai.userid > 0) {
            getCartCount();
        }
        

    });
});
define('page/index/news',['jquery', 'module/util'], function($) {
  $(function() {
    /*--------first-------*/
    function unReadNum() {


      $.ajax({
        url: '/mall/message/unreadnum',
        dataType: 'json',
        data: {},
        type: 'POST',
        success: function(data) {
          if (data.ret.success) {
            $(".H_newsNum").text(data.ret.result)
          } else {
            alert(data.ret.resultDes);
          }
        },
        error: function() {
          console.log('error');
        }
      });

    }
    unReadNum();
    /*--------second-------*/
    var timer = null;
    $(".newsFont").mouseover(function() {
      if ($('.newsFont').hasClass('hasHover')) {
        $('.news').slideDown();
      } else {
        $('.news').slideDown();
        nearlNewsList();
      }
      if(timer){
        clearTimeout(timer);
      }
    }).mouseout(function() {
      timer = setTimeout(function() { $('.news').slideUp(); clearTimeout(timer);}, 500);
    });

    $(document).on('click', '.listNews:not(".H_changeColor")', function() {
      var id = $(this).attr('data-id');
      readNews(this, id);
      unReadNum();
    })

    function nearlNewsList() {
      $.ajax({
        url: '/mall/message/nearlNewsList',
        dataType: 'json',
        data: {},
        type: 'POST',
        success: function(data) {
          if (data.issuccess) {
            $('.newsFont').addClass('hasHover');
            var html = '';
            $.each(data.bizObj.list, function(index, obj) {
              var isRead = obj.isRead;
              var isReadCls = '';
              if (isRead == 'y') {
                isReadCls = 'H_changeColor';
              }
              var title = obj.title;
              var iconUrl = obj.iconUrl;
              var content = obj.content;
              var time = obj.time;
              var isOutlink  = obj.isOutlink ;
              var outlinkUrl = obj.outlinkUrl;
              if (isOutlink ==='y' && outlinkUrl !== null && outlinkUrl !== '' && outlinkUrl !== 'null'  ) {
                
              }else{
                outlinkUrl = "javascript:";
              }

              html += '<a class="listNews ' + isReadCls + '" data-id="' + obj.id + '" href="' + outlinkUrl + '" target="_blank"><img src="' + aixuedai.staticpath + '/images/news/' + iconUrl + '" class="' + isReadCls + '"><p>' + title + '</p><span class="fr mr10 timeNews">' + time + '</span><p class="downFont cc9 fs12">' + content + '</p></a>';

            })
            $(".news").html('<div class="hg5 fs14">鏈娑堟伅(<b class="orange-color newsNum">' + $('.H_newsNum').text() + '</b>)</div>' + html + '<a class="chakan fs16 clearfix checkNews" href="/mall/message/gonews.html" target="_blank">鏌ョ湅鎵�湁娑堟伅</a>')
            $(".newsFont").addClass("H_hover");
          } else {
            alert(data.result.resultDes);
          }
        },
        error: function() {
          console.log('error');
        }
      })
    }

    function readNews(self,id) {
      $.ajax({
        url: '/mall/message/read',
        dataType: 'json',
        type: 'POST',
        data: {
          id: id
        },
        success: function(data) {
          if (data.ret.success) {
            $(self).addClass('changeColor');
            $(self).find(".img").addClass('changeColor');
            nearlNewsList();
          } else {
            alert(data.ret.resultDes);
          }

        },
        error: function() {
          console.log('error');
        }
      })
    }

  })
});
define('main',['jquery', 'module/util', 'lazyload', 'module/dialog','module/checkUserStatus'], function($) {
    'use strict';

    $(function() {

        //鍒犻櫎鍨冨溇cookie
        function delCookie(name) {
            document.cookie = name + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
        }
        delCookie('_OkLJ_%UJ');
        $('#J_PendantClose').on('click', function(event) {
           $(this).closest('.pendant').fadeOut();
        });
        //涓炬姤
        if ($('#J_Report')[0]) {
            $('#J_Report').click(function() {
                var html = '';
                html += '<div class="main">';
                html += '<a class="qqNumber fw fs16" target="blank" href="http://wpa.qq.com/msgrd?V=3&uin=2976373015&Site=鐖卞璐峰湪绾夸妇鎶�Menu=yes">';
                html += '2976373015</a>';
                html += '<div class="email fw fs16">';
                html += 'fengkongbu@aixuedai.com</div>';
                html += '</div>';
                $.AXD.dialog.init({
                    id: "J_ReportBookDialog",
                    title: "涓炬姤鎷垮ぇ濂�,
                    html: html,
                    width: '900px'
                });
            });
        }

        if (aixuedai.userid > 0) {
            requirejs(['module/cartCount', 'page/index/news']);
        }

        if ($('.J_MobileFee')[0]) {
            $('.J_MobileFee').on('click', function(e){
                e.preventDefault();

                var self = this;
                if (aixuedai.userid == '') {
                    var strHref = '/login.jsp?url=' + window.location.pathname + window.location.search;
                    window.location.href = strHref;
 
                    return false;
                }

                var result  = $.AXD.checkUserStatus(self, {} );
                if(!result){
                    return false;
                }

                var html = '';
                html += '<div >';
                html += '<iframe src="/mall/global/goMobileFee.html" style="width:100%;height:500px;" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>';
                html += '</div>';
                $.AXD.dialog.init({
                    id: "J_MobileFeeDialog",
                    //showtitle: false,
                    title: "璇濊垂鍏呭�",
                    html: html,
                    width: '900px'
                });

            })
        }


        //涓昏彍鍗�
        if ($('#J_menuTable')[0]) {

            $('.header-bottom.fixed').find('.first').on('mouseenter', (function() {
                $('#J_menuTable').animate({
                    top: '44px'
                }, 300, 'linear');
            }));

            $('.noIndexMenu').on('mouseenter', (function() {
                if ($(document).scrollTop() < 150) {
                    $('#J_noIndexMenuTable').parent().parent().find('.layout1200').css('height', '400px');
                    $('#J_noIndexMenuTable').animate({
                        top: '0px'
                    }, 300, 'linear');
                }
            }));

            $('#J_menuTable').on('mouseleave', (function() {
                $('#J_menuTable').animate({
                    top: '-355px'
                }, 300, 'linear');
            }));

            $('.noIndexFixed').on('mouseleave', (function() {
                $('#J_noIndexMenuTable').animate({
                    top: '-345px'
                }, 300, 'linear', function() {
                    $('#J_noIndexMenuTable').parent().parent().find('.layout1200').css('height', '0px');
                });
            }));

            $(window).scroll(function() {
                $('#J_menuTable').stop();
                $('#J_menuTable').animate({
                    top: '-347px'
                }, 300, 'linear');
                var top = $(window).scrollTop();
                if (top > 120) {
                    if (!$.AXD.util.isIE6()) {
                        $('#J_RSide').stop();
                        $('#J_RSide').animate({
                            right: '0px'
                        }, 'linear');
                        $("#header .header-bottom").addClass("fixed");
                        $('.menuBox .menu').stop();
                        $('#J_menuTable').show();
                        $('.menuBox .menu').animate({
                            top: '-300px'
                        }, 300, 'linear');
                    }
                } else {
                    if (!$.AXD.util.isIE6()) {
                        $('#J_RSide').stop();
                        $('#J_RSide').animate({
                            right: '-80px'
                        }, 'linear');
                        $("#header .header-bottom").removeClass("fixed");
                        $('.menuBox .menu').stop();
                        $('#J_menuTable').hide();
                        $('.menuBox .menu').animate({
                            top: '0px'
                        }, 300, 'linear');

                    }
                }
            });
        }

        //杩斿洖椤堕儴
        $("#J_RSide .to-top-icon").bind("click", function() {
            $('html,body').animate({
                scrollTop: '0px'
            }, 300);
        });

        //鍒ゆ柇鐢ㄦ埛閫�嚭
        /*if (aixuedai.userid != '') {
            setInterval(function() {
                $.post(aixuedai.path + '/login/checkSessionout', function(data) {
                    if (data) {
                        if (data.status == 100) {
                            require(['jquery', 'dialog'], function($) {
                                $.AXD.dialog.login();
                            });
                        }
                    }
                });
            }, 5 * 60 * 1000);
        }*/

        //requirejs(['module/fingerprint']);
    });

});
define('module/cookieFunc',['jquery','cookie','module/util'], function ($) {
	function getCookieObj (name,url) {
		this.cookieName = name;
		this.url = url || ""
	}
	getCookieObj.prototype = {
		getProductCookie: function  ($parent) {
			$.ajax({
				type:"POST",
				url:this.url,
				data:{
					ids:$.parseJSON($.cookie("productId")) ? $.parseJSON($.cookie("productId")).join(',') : ""
				},
				success:function  (data) {
					if (data) {
						$parent.css('backgroundImage','none').append(data);
					}else{
						$parent.remove();
					}
				}
			});
		}
	}
	return getCookieObj;
});
/**
 * Banner婊氬姩
 */
define('module/scroll',['jquery', 'module/util'], function($) {

	var TimeC;
	var zindex = 1;
	var timeHanlder = null;
	var timeSpan = 3000;

	$.AXD.scroll = {
		init: function() {
			$('#pagination li a').on('mouseover', function() {
				var self = $(this);
				if (timeHanlder) {
					clearTimeout(timeHanlder);
				}
				timeHanlder = setTimeout(function() {

					$.AXD.scroll.stop();
					var Wwidth = $(window).width();
					var childrennum = $("#ScrollMainIn").children().length;
					var ScrollStep = self.html() - 1;
					$.AXD.scroll.go(Wwidth, ScrollStep, childrennum);

				}, 200);
			});
			var me = this;
			//me.show();

			var Wwidth = $(window).width();
			var ScrollStep = 0;
			var childrennum = $("#ScrollMainIn").children().length;
			$("#pagination").width(31 * childrennum);
			$("#pagination li").removeClass("current");
			$("#pagination").children().eq(ScrollStep).addClass("current");
			$("#ScrollMainIn").find('a').eq(ScrollStep).css("z-index", 100 + zindex);
			$('.url').attr('href', $("#ScrollMainIn").find('a').eq(ScrollStep).attr("href"));
			ScrollStep++;
			zindex++;
			$.AXD.scroll.move(Wwidth, ScrollStep, childrennum);
		},
		 
		show: function() {
			var Wwidth = $(window).width();
			var ScrollStep = 0;
			var childrennum = $("#ScrollMainIn").children().length;
			$("#pagination").width(31 * childrennum);
			$("#ScrollMainIn a").hide();
			$("#ScrollMainIn a b:first").hide();
			$.AXD.scroll.go(Wwidth, ScrollStep, childrennum);
		},
		go: function(Wwidth, ScrollStep, childrennum) {
			if (ScrollStep == childrennum) {
				ScrollStep = 0
			};
			$("#pagination li").removeClass("current");
			$("#pagination").children().eq(ScrollStep).addClass("current");
			$("#ScrollMainIn").find('a').eq(ScrollStep).hide();
			$("#ScrollMainIn").find('a').eq(ScrollStep).css("z-index", 100 + zindex);
			$("#ScrollMainIn").find('a').eq(ScrollStep).fadeIn(500);
			$("#ScrollMainIn").find('a').eq(ScrollStep).find('.font').hide();
			$("#ScrollMainIn").find('a').eq(ScrollStep).find('.font').fadeIn(2000);
			$('.url').attr('href', $("#ScrollMainIn").find('a').eq(ScrollStep).attr("href"));
			ScrollStep++;
			zindex++;
			$.AXD.scroll.move(Wwidth, ScrollStep, childrennum);

		},
		move: function(Wwidth, ScrollStep, childrennum) {
			TimeC = setTimeout('$.AXD.scroll.go(' + Wwidth + ',' + ScrollStep + ',' + childrennum + ')', timeSpan);
		},
		stop: function() {
			clearTimeout(TimeC);
		}
	}

});
define('page/goods/list',['jquery', 'module/cookieFunc', 'lazyload', 'module/scroll'], function($, cookieObj) {
	$(function() {
		datalazyload.init();

		// 鑾峰彇cookie涓殑鍟嗗搧id锛宎jax鎶撳彇鍚庡彴鏁版嵁
		var productCookie = new cookieObj("productId", "/product/getBrowseHistory");
		var leftPart1 = $("div.leftPart1").eq(0);
		var leftPart2 = $("div.leftPart1").eq(1);
		leftPart2.find('a').remove();
		productCookie.getProductCookie(leftPart2);

		// ajax鎶撳彇鐑棬鎺ㄨ崘鏁版嵁
		var categoryId = $.AXD.util.getUrlParam("cat");
		$.get(categoryId ? "/common/getTopList?cateid=" + categoryId : "/common/getTopList", function(data) {
			if (data) {
				leftPart1.css('backgroundImage', 'none').append(data);
			} else {
				leftPart1.css('backgroundImage', 'none').append('');
			}
		});
		$('.hotShow:last-child').css('border-bottom', 'none');
		//$('.floor .goodsList <div class="show"></div>case:nth-child(4n)').css('border-right', 'none');

		//$('.floor .goodsList .showcase:nth-child(4n)').css('border-right', 'none');
		if ($('#pagination li').length > 1) {
			$.AXD.scroll.init();
		}

	});
});
requirejs(['common'], function(common) {
	requirejs(['main','module/cookieFunc','page/goods/list']);
});
define("boot/goods/list", function(){});

