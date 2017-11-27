define("module/util",["jquery"],function(e){e.AXD=e.AXD||{versions:"aixuedai1.0"},e.AXD.util={isIE6:function(){return e.browser.msie&&"6.0"==e.browser.version?!0:!1},isIOS:function(){return/\((iPhone|iPad|iPod)/i.test(navigator.userAgent)},isValidReg:function(e){var i=/<|>|\[|\]|\{|\}|銆巪銆弢鈥粅鈼媩鈼弢鈼巪搂|鈻硘鈻瞸鈽唡鈽厊鈼噟鈼唡鈻鈻紎銑锕媩鈯晐鈯檤銆抾銊厊銊唡銊噟銊坾銊墊銊妡銊媩銊寍銊峾銊巪銊弢銊恷銊憒銊抾銊搢銊攟銊晐銊東銊梶銊榺銊檤銊殀銊泑銊渱銊潀銊瀨銊焲銊銊銊銊銊銊銊▅銊﹟鈻爘鈻剕鈻唡\*|@|#|\^|\\/;return 1==i.test(e)?!1:!0},isValidURL:function(i){var t=/^([hH][tT]{2}[pP]:\/\/|[hH][tT]{2}[pP][sS]:\/\/)(\S+\.\S+)$/;return e.AXD.util.isNULL(i)?!1:(i=e.AXD.util.trim(i),null==i.match(t)?!1:!0)},isValidDomain:function(i){var t=/^(\S+\.\S+)$/;return e.AXD.util.isNULL(i)?!1:(i=e.AXD.util.trim(i),null==i.match(t)?!1:!0)},isEmail:function(e){var i=/^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;return i.test(e)?!0:!1},isPhoneNumber:function(e){var i=/^[0-9]{11}$/;return i.test(e)?!0:!1},isDate:function(e){var i=/^(\d{4})\-(\d{1,2})\-(\d{1,2})$/;return i.test(e)?!0:!1},isNumber:function(e){var i=/^\d*$/;return null==e.match(i)?!1:!0},isQq:function(e){var i=/^\d{5,10}$/;return i.test(e)?!0:!1},isDecimal:function(e){var i=/^\d{0,8}\.{0,1}(\d{1,2})?$/;return null==e.match(i)?!1:!0},isValidPost:function(e){var i=/^\d{6}$/;return null==e.match(i)?!1:!0},isCERT:function(e){var i=/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;return null==e.match(i)?!1:!0},getBrithday:function(e){var i="";return i=15==e.length?"19"+e.substring(6,8):e.substring(6,10)},isAdult:function(i){var t=parseInt(e.AXD.util.getBrithday(i)),n=parseInt((new Date).getFullYear());return n-t>=18?!0:!1},isBirthday:function(e){var i=/\d{4}-\d{2}-\d{2}/;return null==e.match(i)?!1:!0},requestPrameVal:function(e){var t=location.href,n=t.substring(t.indexOf("?")+1,t.length).split("&"),a={};for(i=0;j=n[i];i++)a[j.substring(0,j.indexOf("=")).toLowerCase()]=j.substring(j.indexOf("=")+1,j.length);var s=a[e.toLowerCase()];return"undefined"==typeof s?"":s},trim:function(e){return e.replace(/(^\s*)|(\s*$)/g,"")},lTrim:function(e){return e.replace(/(^\s*)/g,"")},rTrim:function(e){return e.replace(/(\s*$)/g,"")},isNULL:function(i){return null==i?!0:0==e.AXD.util.trim(i).length?!0:!1},isInt:function(e){var i=/^(-|\+)?\d+$/;return i.test(e)},getMsgLength:function(e){for(var i=0,t=e.length,n=0;t>n;n++){var a=e.charCodeAt(n);i+=a>=1&&126>=a||a>=65376&&65439>=a?.5:1}return i},checkAll:function(e){if(null!=e)for(i=0;i<e.length;i++)e[i].checked=!0},uncheckAll:function(e){if(null!=e)for(i=0;i<e.length;i++)e[i].checked=!1},getWordLength:function(i){i=e.AXD.util.trim(i);var t=0,n=0;return n=i.replace(/[^\x00-\xff]/g,"**").length,t=parseInt(n/2)==n/2?n/2:parseInt(n/2)+1},getDomain:function(e){var i="null";("undefined"==typeof e||null==e)&&(e=window.location.href);var t=/.*\:\/\/([^\/]*).*/,n=e.match(t);return"undefined"!=typeof n&&null!=n&&(i=n[1]),i},addFavorite:function(e,i){var t=-1!=navigator.userAgent.toLowerCase().indexOf("mac")?"Command/Cmd":"CTRL";document.all?window.external.addFavorite(e,i):window.sidebar?window.sidebar.addPanel(e,i,""):alert("鎮ㄥ彲浠ュ皾璇曢€氳繃蹇嵎閿�"+t+" + D 鍔犲叆鍒版敹钘忓す~")},addNDays:function(e,i){var t=new Date(Date.parse(e.replace(/-/g,"/")));return t.setDate(t.getDate()+parseInt(i)),t.getFullYear()+"-"+(t.getMonth()+1)+"-"+t.getDate()},getUrlParam:function(e){var i=new RegExp("(^|&)"+e+"=([^&]*)(&|$)"),t=window.location.search.substr(1).match(i);return null!=t?unescape(t[2]):null},getPosition:function(i){var t=i.offset().top,n=i.offset().left,a=t+i.outerHeight(),s=n+i.outerWidth(),o=n+i.outerWidth()/2,r=t+i.outerHeight()/2;/iPad/i.test(navigator.userAgent)&&(t-=e(window).scrollTop(),a-=e(window).scrollTop(),r-=e(window).scrollTop());var l={leftTop:function(){return{x:n,y:t}},leftMid:function(){return{x:n,y:r}},leftBottom:function(){return{x:n,y:a}},topMid:function(){return{x:o,y:t}},rightTop:function(){return{x:s,y:t}},rightMid:function(){return{x:s,y:r}},rightBottom:function(){return{x:s,y:a}},MidBottom:function(){return{x:o,y:a}},middle:function(){return{x:o,y:r}}};return l},queryTransform:function(){for(var e=location.search.slice(1).split("&"),i={},t="",n=0,a=e.length;a>n;n++)t=e[n].split("="),t.length>1&&(i[t[0]]=t[1]);return i},toDecimal2:function(e){var i=parseFloat(e);if(isNaN(i))return!1;var i=Math.round(100*e)/100,t=i.toString(),n=t.indexOf(".");for(0>n&&(n=t.length,t+=".");t.length<=n+2;)t+="0";return t}},e.fn.extend({disableBtn:function(){e(this).addClass("disabled")},enableBtn:function(){var i=e(this);setTimeout(function(){i.removeClass("disabled")},100)}}),Array.indexOf||(Array.prototype.indexOf=function(e){for(var i=0;i<this.length;i++)if(this[i]==e)return i;return-1})}),define("module/dialog",["jquery","module/util","jqtools","overlay"],function(e){e.AXD.dialog={conf:{id:"J_AXDDialog",title:"鎻愮ず",html:"",callback:function(){},showtitle:!0,showclose:!0,showMask:!0,width:"",closecallback:function(){}},init:function(i){var t=e.AXD.dialog.conf;i&&e.extend(t,i);var n=t.id,a=""!==t.width?"width:"+t.width+"!important":"";if(e("#"+n)[0])e("#"+n).data("overlay").load();else{var s="";s+='<div id="'+n+'" class="g-dialog" style="'+a+'">',t.showtitle&&(s+='<div class="hd">',s+="<h3>"+t.title+"</h3>",s+="</div>"),s+='<div class="bd">',s+=t.html,s+="</div>",t.showclose&&(s+='<a class="common-icon close" href="javascript:;"></a>'),s+="</div>",e("body").append(s);var o={top:"center",oneInstance:!1,closeOnClick:!1,load:!0,closeOnEsc:!1};t.showMask&&(o.mask={color:"#000",loadSpeed:200,closeSpeed:0,opacity:.3}),e("#"+n).overlay(o),0==t.showclose&&e("#"+n+" .close").remove(),e("#"+n+" .close").unbind().bind("click",function(){e("#"+n).data("overlay").close(),e("#"+n).remove(),t.closecallback()}),e("#"+n+" .close-dialog").bind("click",function(){e("#"+n).data("overlay").close(),e("#"+n).remove()}),t.callback()}},confirm:function(i,t){var n='<div class="clearfix unit mt10" style="height:60px;font-size:16px;text-align: center;">'+i+"</div>";n+='<div class="clearfix unit mt10" style="width: 306px;"><a href="javascript:;" class="btn common-btn mr10 gray fl close-dialog">鍚�</a><a href="javascript:;" class="btn common-btn  orange fl J_Save">鏄�</a></div>',e.AXD.dialog.init({id:"J_Confirm",title:"鎻愮ず",html:n,showtitle:!0,width:"500px",callback:function(){e("#J_Confirm .J_Save").off("click").live("click",function(){"function"==typeof t&&t()})}})},complete:function(i,t,n){e.AXD.dialog.init({id:"J_CompleteDialog",title:"",html:i,showtitle:!1,showclose:!1,width:"500px",callback:function(){var i=n||3,a=setInterval(function(){i--,e("#J_CompleteDialog em").text(i),0==i&&(e("#J_CompleteDialog").data("overlay").close(),clearInterval(a),"function"==typeof t&&t())},1e3)}})}}}),define("module/extendfn",["jquery","module/util"],function(e){e.fn.extend({dropdown:function(i){var t={classNm:".dropdown",timer:null,fadeSpeed:100,duration:2e3};i&&e.extend(t,i);var n=this,a=e(t.classNm);n.each(function(){var i=e(this);i.hover(function(){clearTimeout(t.timer),a.fadeIn(t.fadeSpeed)},function(){t.timer=setTimeout(function(){a.fadeOut(t.fadeSpeed)},t.duration)}),a.hover(function(){clearTimeout(t.timer),a.show()},function(){t.timer=setTimeout(function(){a.fadeOut(t.fadeSpeed)},t.duration)})})},insertAtCursor:function(i){var t=e(this)[0];if(document.selection)this.focus(),sel=document.selection.createRange(),sel.text=i,this.focus();else if(t.selectionStart||"0"==t.selectionStart){var n=t.selectionStart,a=t.selectionEnd,s=t.scrollTop;t.value=t.value.substring(0,n)+i+t.value.substring(a,t.value.length),this.focus(),t.selectionStart=n+i.length,t.selectionEnd=n+i.length,t.scrollTop=s}else this.value+=i,this.focus()},disableBtn:function(){e(this).addClass("disabled")},enableBtn:function(){var i=e(this);setTimeout(function(){i.removeClass("disabled")},500)},validatePhone:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0,oldtel:""},i);t.live("blur",function(){var i=e.trim(t.val()),a=t.closest(n.parentclass).find(n.errorclass).eq(n.index),s=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return a.hide(),s.hide(),""==i?(a.find(".msg").text("璇疯緭鍏ユ墜鏈哄彿"),void a.show()):e.AXD.util.isPhoneNumber(i)?""!==n.oldtel&&i===n.oldtel?(a.find(".msg").text("鏂版墜鏈哄彿涓嶈兘涓庡師鎵嬫満鍙风浉鍚�"),void a.show()):(a.hide(),void s.show()):(a.find(".msg").text("璇疯緭鍏ユ纭殑鎵嬫満鍙�"),void a.show())})},validateAcount:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0},i);t.live("blur",function(){var i=e.trim(t.val()),a=t.closest(n.parentclass).find(n.errorclass).eq(n.index),s=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return a.hide(),s.hide(),""==i?(a.find(".msg").text("璇疯緭鍏ュ笎鍙�"),void a.show()):void a.hide()})},validateAcountPassword:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0},i);t.live("blur",function(){var i=e.trim(t.val()),a=t.closest(n.parentclass).find(n.errorclass).eq(n.index),s=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return a.hide(),s.hide(),""==i?(a.find(".msg").text("璇疯緭鍏ュ瘑鐮�"),void a.show()):void a.hide()})},validateNomalName:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0,msg:"璇峰～鍐�"},i);t.live("blur",function(){var i=e.trim(t.val()),a=t.closest(n.parentclass).find(n.errorclass).eq(n.index),s=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return a.hide(),s.hide(),""==i?(a.find(".msg").text(n.msg),void a.show()):void a.hide()})},validatecheckbox:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0},i);t.live("blur",function(){var e=t.closest(n.parentclass).find(n.errorclass).eq(n.index),i=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return e.hide(),i.hide(),"checked"!=t.attr("checked")?(e.find(".msg").text("璇峰厛鍚屾剰鍚堢害"),void e.show()):void e.hide()})},validateVerifyImg:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0},i);t.live("blur",function(){var i=e.trim(t.val()),a=t.closest(n.parentclass).find(n.errorclass).eq(n.index),s=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return a.hide(),s.hide(),""==i?(a.find(".msg").text("璇疯緭鍏ュ浘褰㈤獙璇佺爜"),void a.show()):void a.hide()})},validateTelcode:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0},i);t.live("blur",function(){var i=e.trim(t.val()),a=t.closest(n.parentclass).find(n.errorclass).eq(n.index),s=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return a.hide(),s.hide(),""==i?(a.find(".msg").text("璇疯緭鍏ユ墜鏈洪獙璇佺爜"),void a.show()):void a.hide()})},validateAichuangcode:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0},i);t.live("blur",function(){var i=e.trim(t.val()),a=t.closest(n.parentclass).find(n.errorclass).eq(n.index),s=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return a.hide(),s.hide(),i.length>10?(a.find(".msg").text("鐖卞垱鐮佹牸寮忎笉姝ｇ‘"),void a.show()):isNaN(i)?(a.find(".msg").text("鐖卞垱鐮佹牸寮忎笉姝ｇ‘"),void a.show()):void a.hide()})},validatePayPassword:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0,action:""},i);t.live("blur",function(){var i=e.trim(t.val()),a=t.closest(n.parentclass).find(n.errorclass).eq(n.index),s=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return a.hide(),s.hide(),""==i?(a.find(".msg").text("璇疯緭鍏ュ瘑鐮�"),void a.show()):6!=i.length?(a.find(".msg").text("瀵嗙爜闀垮害涓�6浣嶆暟瀛�"),void a.show()):/[0-9]+/.test(i)?void a.hide():(a.find(".msg").text("瀵嗙爜鐢�6浣嶆暟瀛楃粍鎴�"),void a.show())})},validateNPayPassword:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0,oldpwd:e(".oldpwd")},i);t.live("blur",function(){var i=e.trim(t.val()),a=t.closest(n.parentclass).find(n.errorclass).eq(n.index),s=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return a.hide(),s.hide(),""==i?(a.find(".msg").text("璇疯緭鍏ユ柊瀵嗙爜"),void a.show()):i==e.trim(n.oldpwd.val())?(a.find(".msg").text("鏂板瘑鐮佷笉鑳藉拰鍘熷瘑鐮佷竴鑷�"),void a.show()):6!=i.length?(a.find(".msg").text("瀵嗙爜闀垮害涓�6浣嶆暟瀛�"),void a.show()):/[0-9]+/.test(i)?void a.hide():(a.find(".msg").text("瀵嗙爜鐢�6浣嶆暟瀛楃粍鎴�"),void a.show())})},validatePassword:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0,action:""},i);t.live("blur",function(){var i=e.trim(t.val()),a=t.closest(n.parentclass).find(n.errorclass).eq(n.index),s=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return a.hide(),s.hide(),""==i?(a.find(".msg").text("璇疯緭鍏ュ瘑鐮�"),void a.show()):"login"!=n.action&&"modifypassword"!=n.action?i.length<8?(a.find(".msg").text("瀵嗙爜闀垮害涓�8-16浣嶆暟瀛�,瀛楁瘝缁勫悎鑰屾垚"),void a.show()):i.length>16?(a.find(".msg").text("瀵嗙爜闀垮害蹇呴』灏忎簬16浣�"),void a.show()):/[a-zA-Z]+/.test(i)&&/[0-9]+/.test(i)?void a.hide():(a.find(".msg").text("瀵嗙爜鐢�8-16浣嶆暟瀛�,瀛楁瘝缁勫悎鑰屾垚"),void a.show()):void 0})},validateNPassword:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0,oldpwd:e(".oldpwd")},i);t.live("blur",function(){var i=e.trim(t.val()),a=t.closest(n.parentclass).find(n.errorclass).eq(n.index),s=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return a.hide(),s.hide(),""==i?(a.find(".msg").text("璇疯緭鍏ユ柊瀵嗙爜"),void a.show()):i==e.trim(n.oldpwd.val())?(a.find(".msg").text("鏂板瘑鐮佷笉鑳藉拰鍘熷瘑鐮佷竴鑷�"),void a.show()):i.length<8?(a.find(".msg").text("瀵嗙爜闀垮害蹇呴』澶т簬8浣�"),void a.show()):i.length>16?(a.find(".msg").text("瀵嗙爜闀垮害蹇呴』灏忎簬16浣�"),void a.show()):/[a-zA-Z]+/.test(i)&&/[0-9]+/.test(i)?void a.hide():(a.find(".msg").text("瀵嗙爜鐢�8-16浣嶆暟瀛楋紝鑻辨枃锛岀壒娈婄鍙风粍鍚堣€屾垚"),void a.show())})},validateCPassword:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0,pwd:e(".pwd")},i);t.live("blur",function(){var i=e.trim(t.val()),a=t.closest(n.parentclass).find(n.errorclass).eq(n.index),s=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return a.hide(),s.hide(),""==i?(a.find(".msg").text("璇峰啀娆¤緭鍏ュ瘑鐮�"),void a.show()):i!=e.trim(n.pwd.val())?(a.find(".msg").text("涓ゆ瀵嗙爜杈撳叆涓嶄竴鑷�"),void a.show()):void a.hide()})},validateName:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0},i);t.live("blur",function(){var i=e.trim(t.val()),a=t.closest(n.parentclass).find(n.errorclass).eq(n.index),s=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return a.hide(),s.hide(),""==i?(a.find(".msg").text("璇疯緭鍏ョ湡瀹炲鍚�"),void a.show()):(a.hide(),void s.show())})},validateCert:function(i){var t=e(this),n=e.extend({errorclass:".base-error",rightclass:".base-right",parentclass:".unit",index:0},i);t.live("blur",function(){var i=e.trim(t.val()),a=t.closest(n.parentclass).find(n.errorclass).eq(n.index),s=t.closest(n.parentclass).find(n.rightclass).eq(n.index);return a.hide(),s.hide(),""==i?(a.find(".msg").text("璇疯緭鍏ヨ韩浠借瘉鍙风爜"),void a.show()):void e.post(aixuedai.path+"user/checkCert",{cert:i},function(e){e&&(100==e.status?(a.hide(),s.show()):(a.find(".msg").text(e.info),a.show()))})})}})}),define("module/tipshow",["jquery","module/util"],function(e){e.AXD.tip={conf:{timer:null,timerLength:3e3,tipClass:"tipmodal tipmodal-error"},show:function(i,t){clearTimeout(e.AXD.tip.conf.timer);var n=e.AXD.util.getPosition(i).topMid();e(".tipbox")[0]||e("body").append('<div class="tipbox "'+t+"></div>"),e(".tipbox").attr("class","tipbox "+e.AXD.tip.conf.tipClass),e(".tipbox").html(t);var a=e(".tipbox").outerWidth(),s=e(".tipbox").outerHeight();e(".tipbox").css({left:n.x-a/2+"px",top:n.y-s-10+"px"}).fadeIn(),e.AXD.tip.conf.timer=setTimeout(function(){e(".tipbox").fadeOut()},e.AXD.tip.conf.timerLength)}}}),define("module/setPayPassword",["jquery","module/util","module/extendfn","jqtools","module/dialog","module/tipshow"],function(e){e(function(){function i(){e("#J_ModifyOldPwd_Pay").validatePayPassword({parentclass:".modify-paypwd-box",index:0,action:"modifypassword"}),e("#J_ModifyPwd_Pay").validateNPayPassword({parentclass:".modify-paypwd-box",index:1,oldpwd:e("#J_ModifyOldPwd_Pay")}),e("#J_ModifyCPwd_Pay").validateCPassword({parentclass:".modify-paypwd-box",index:2,pwd:e("#J_ModifyPwd_Pay")}),e("#J_PwdBtn_Pay").click(function(){var i=e(this),t=!1;if(!i.hasClass("disabled")&&(e(".modify-paypwd-box .base-input").trigger("blur"),e(".modify-paypwd-box .base-error").each(function(){var i=e(this);return"block"==i.css("display")?void(t=!0):void 0}),!t)){var n=e.trim(e("#J_ModifyOldPwd_Pay").val()),a=e.trim(e("#J_ModifyPwd_Pay").val());e.trim(e("#J_ModifyCPwd_Pay").val());i.disableBtn(),e.ajax({url:"/mall/safe/modifyPayPwd",type:"post",dataType:"json",data:{password:n,newPwd:a},success:function(t){if(t)if(t.ret.success===!0){var n="";n+="<div>",n+='<h3 class="fs18 tac">鏀粯瀵嗙爜淇敼鎴愬姛锛�</h3>',n+='<div class="mt20 tac intro-color fs14"><em class="red-color">3</em>绉掑悗鍏抽棴绐楀彛銆�</div>',n+="</div>",e("#editPaypwd").hide(),e.AXD.dialog.complete(n,function(){window.location.reload()})}else e.AXD.tip.conf.tipClass="tipmodal tipmodal-error",e.AXD.tip.show(i,t.ret.resultDes),i.enableBtn()},error:function(){e.AXD.tip.conf.tipClass="tipmodal tipmodal-error",e.AXD.tip.show(i,"鏈嶅姟鍣ㄧ箒蹇欙紝璇风◢鍊欏啀璇�!"),i.enableBtn()}})}})}function t(){e("#J_Cardid").validateNomalName({parentclass:".set-paypwd-box",index:0,msg:"璇疯緭鍏ヨ韩浠借瘉鍙峰悗鍥涗綅"}),e("#J_ModifyPwd_Pay2").validateNPayPassword({parentclass:".set-paypwd-box",index:1}),e("#J_ModifyCPwd_Pay2").validateCPassword({parentclass:".set-paypwd-box",index:2,pwd:e("#J_ModifyPwd_Pay2")}),e("#J_PwdBtn_Pay2").click(function(){var i=e(this),t=!1;if(!i.hasClass("disabled")&&(e(".set-paypwd-box .base-input").trigger("blur"),e(".set-paypwd-box .base-error").each(function(){var i=e(this);return"block"==i.css("display")?void(t=!0):void 0}),!t)){var n=e.trim(e("#J_ModifyPwd_Pay2").val()),a=e.trim(e("#J_Cardid").val());i.disableBtn(),e.ajax({url:"/mall/safe/paypwd/set",type:"post",dataType:"json",data:{card:a,pwd:n},success:function(t){if(t)if(t.ret.success===!0){var n="";n+="<div>",n+='<h3 class="fs18 tac">鏀粯瀵嗙爜璁剧疆鎴愬姛锛�</h3>',n+="</div>",e("#setPaypwd").hide(),e.AXD.dialog.complete(n,function(){window.location.reload()})}else e.AXD.tip.conf.tipClass="tipmodal tipmodal-error",e.AXD.tip.show(i,t.ret.resultDes),i.enableBtn()},error:function(){e.AXD.tip.conf.tipClass="tipmodal tipmodal-error",e.AXD.tip.show(i,"鏈嶅姟鍣ㄧ箒蹇欙紝璇风◢鍊欏啀璇�!"),i.enableBtn()}})}})}function n(){e("#findPaygpwd .code-btn").getVerifactionCode({smstype:"normal",telValue:e(".bangTel").attr("data-tel")}),e("#J_PayCode").validateNomalName({parentclass:".modify-payfind-box",index:0,msg:"璇疯緭鍏ラ獙璇佺爜"}),e("#J_ModifyPwd_PayFind").validateNPayPassword({parentclass:".modify-payfind-box",index:1}),e("#J_ModifyCPwd_PayFind").validateCPassword({parentclass:".modify-payfind-box",index:2,pwd:e("#J_ModifyPwd_PayFind")}),e("#J_PwdBtn_PayFind").click(function(){var i=e(this),t=!1;if(!i.hasClass("disabled")&&(e(".modify-payfind-box .base-input").trigger("blur"),e(".modify-payfind-box .base-error").each(function(){var i=e(this);return"block"==i.css("display")?void(t=!0):void 0}),!t)){var n=e.trim(e("#J_PayCode").val()),a=e.trim(e("#J_ModifyPwd_PayFind").val());e.trim(e("#J_ModifyCPwd_PayFind").val());i.disableBtn(),e.ajax({url:"/mall/safe/resetPayPwd",type:"post",dataType:"json",data:{phone:e(".bangTel").attr("data-tel"),checkCode:n,newPwd:a},success:function(t){if(t)if(t.ret.success===!0){var n="";n+="<div>",n+='<h3 class="fs18 tac">鎵惧洖鏀粯瀵嗙爜鎴愬姛锛�</h3>',n+='<div class="mt20 tac intro-color fs14"><em class="red-color">3</em>绉掑悗鍏抽棴绐楀彛銆�</div>',n+="</div>","/mall/safe/payCenter.html"!=window.location.pathname&&e("#findPaygpwd").hide(),e(".g-dialog").remove(),e.AXD.dialog.complete(n,function(){window.location.reload()})}else e.AXD.tip.conf.tipClass="tipmodal tipmodal-error",e.AXD.tip.show(i,t.ret.resultDes),i.enableBtn()},error:function(){e.AXD.tip.conf.tipClass="tipmodal tipmodal-error",e.AXD.tip.show(i,"鏈嶅姟鍣ㄧ箒蹇欙紝璇风◢鍊欏啀璇�!"),i.enableBtn()}})}})}var a='<div class="set-paypwd-box pl40"><div class="unit clearfix mb20"><label class="fl">韬唤璇佸悗鍥涗綅:</label><input type="text" id="J_Cardid" maxlength="4" class="base-input fl" placeholder="璇疯緭鍏ヨ韩浠借瘉鍙峰悗鍥涗綅"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div></div><div class="unit clearfix mb20"><label class="fl">鏀粯瀵嗙爜:</label><input type="password" id="J_ModifyPwd_Pay2" maxlength="6" class="base-input fl" placeholder="璇疯缃�6浣嶆暟瀛楀瘑鐮�"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div></div><div class="unit clearfix mb30"><label class="fl">鍐嶈緭涓€娆�:</label><input type="password" id="J_ModifyCPwd_Pay2" maxlength="6" class="base-input fl"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div></div><p class="mlnext"><a id="J_PwdBtn_Pay2" class="common-btn orange mr30">瀹� 鎴�</a></p></div>',s='<div class="modify-paypwd-box pl40"> <div class="unit clearfix mb20"> <label class="fl">鏃ф敮浠樺瘑鐮�:</label> <input type="password" id="J_ModifyOldPwd_Pay" maxlength="6" class="base-input fl" placeholder="璇疯緭鍏ユ棫瀵嗙爜"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div> </div> <div class="unit clearfix mb20"> <label class="fl">鏂版敮浠樺瘑鐮�:</label> <input type="password" id="J_ModifyPwd_Pay" maxlength="6" class="base-input fl" placeholder="璇疯缃�6浣嶆暟瀛楀瘑鐮�"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div> </div> <div class="unit clearfix mb30"> <label class="fl">鍐嶈緭涓€娆�:</label> <input type="password" id="J_ModifyCPwd_Pay" maxlength="6" class="base-input fl"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div> </div> <p class="mlnext"><a id="J_PwdBtn_Pay" class="common-btn orange mr30 inblock">瀹� 鎴�</a><a class="ml20 blue-color eleb mt20 fs14 findPay">蹇樿鏀粯瀵嗙爜锛�</a></p> </div>';e(document).on("click",".setPay",function(){e.AXD.dialog.init({id:"setPaypwd",title:"璁剧疆鏀粯瀵嗙爜",html:a,showtitle:!0,width:"650px",callback:function(){t()}})}),e(document).on("click",".editPay, .editPay2",function(){e.AXD.dialog.init({id:"editPaypwd",title:"淇敼鏀粯瀵嗙爜",html:s,showtitle:!0,width:"650px",callback:function(){i()}})}),e(document).on("click",".findPay",function(){e.AXD.dialog.init({id:"findPaygpwd",title:"鎵惧洖鏀粯瀵嗙爜",html:e("#findpwd").html(),showtitle:!0,width:"680px",callback:function(){n()}})}),e.AXD.initFindPayPwd=n,e.AXD.initFindPayPwdDialog=function(){e.AXD.dialog.init({id:"findPaygpwd",title:"鎵惧洖鏀粯瀵嗙爜",html:e("#findpwd").html(),showtitle:!0,width:"680px",callback:function(){n()}})},e.AXD.setPaypwd=function(){e.AXD.dialog.init({id:"setPaypwd",title:"璁剧疆鏀粯瀵嗙爜",html:a,showtitle:!0,width:"650px",callback:function(){t()}})}})}),define("module/checkUserStatus",["jquery","module/util","module/dialog","module/setPayPassword"],function(e){e.AXD.checkUserStatus=function(i,t,n,a){var s=!1;return e.ajax({url:"/common/checkUserStatus",data:t,dataType:"json",type:"POST",async:!1,success:function(i){if(i.ret.success===!1){var t="";"STATUS10"===i.ret.code?(t="/login.html?url="+window.location.pathname+window.location.search,e.AXD.dialog.init({id:"J_Dialog",title:"",showtitle:!1,width:"500px",html:'<div class="pt20 pb20 tac fs16"><h2>璇风櫥鍏�,涓夌鍚庤嚜鍔ㄨ烦杞埌鐧诲叆椤甸潰~</h2></div>'}),setTimeout(function(){window.location.href=t},3e3)):"STATUS11"===i.ret.code||("STATUS13"===i.ret.code?e.AXD.setPaypwd():"STATUS12"===i.ret.code&&(t="/mall/goinfo.html?auth=true",e.AXD.dialog.init({id:"J_Dialog",title:"",showtitle:!1,width:"500px",html:'<div class="pt20 pb20 tac fs16"><h2>璇烽獙璇佺敤鎴蜂俊鎭�,涓夌鍚庤嚜鍔ㄨ烦杞獙璇侀〉闈</h2></div>'}),setTimeout(function(){window.location.href=t},3e3))),s=!1}else s=!0},error:function(){s=!1}}),s}}),define("module/cartCount",["jquery","module/util"],function(e){e(function(){function i(){e.ajax({url:"/mall/cart/getCartCount",type:"POST",dataType:"json",success:function(i){e(".J_cart").find("b").text(i.cartCount)}})}e.AXD.getCartCount=i,aixuedai.userid>0&&i()})}),define("page/index/news",["jquery","module/util"],function(e){e(function(){function i(){e.ajax({url:"/mall/message/unreadnum",dataType:"json",data:{},type:"POST",success:function(i){i.ret.success?e(".H_newsNum").text(i.ret.result):alert(i.ret.resultDes)},error:function(){console.log("error")}})}function t(){e.ajax({url:"/mall/message/nearlNewsList",dataType:"json",data:{},type:"POST",success:function(i){if(i.issuccess){e(".newsFont").addClass("hasHover");var t="";e.each(i.bizObj.list,function(e,i){var n=i.isRead,a="";"y"==n&&(a="H_changeColor");var s=i.title,o=i.iconUrl,r=i.content,l=i.time,d=i.isOutlink,c=i.outlinkUrl;"y"===d&&null!==c&&""!==c&&"null"!==c||(c="javascript:"),t+='<a class="listNews '+a+'" data-id="'+i.id+'" href="'+c+'" target="_blank"><img src="'+aixuedai.staticpath+"/images/news/"+o+'" class="'+a+'"><p>'+s+'</p><span class="fr mr10 timeNews">'+l+'</span><p class="downFont cc9 fs12">'+r+"</p></a>"}),e(".news").html('<div class="hg5 fs14">鏈娑堟伅(<b class="orange-color newsNum">'+e(".H_newsNum").text()+"</b>)</div>"+t+'<a class="chakan fs16 clearfix checkNews" href="/mall/message/gonews.html" target="_blank">鏌ョ湅鎵€鏈夋秷鎭�</a>'),e(".newsFont").addClass("H_hover")}else alert(i.result.resultDes)},error:function(){console.log("error")}})}function n(i,n){e.ajax({url:"/mall/message/read",dataType:"json",type:"POST",data:{id:n},success:function(n){n.ret.success?(e(i).addClass("changeColor"),e(i).find(".img").addClass("changeColor"),t()):alert(n.ret.resultDes)},error:function(){console.log("error")}})}i();var a=null;e(".newsFont").mouseover(function(){e(".newsFont").hasClass("hasHover")?e(".news").slideDown():(e(".news").slideDown(),t()),a&&clearTimeout(a)}).mouseout(function(){a=setTimeout(function(){e(".news").slideUp(),clearTimeout(a)},500)}),e(document).on("click",'.listNews:not(".H_changeColor")',function(){var t=e(this).attr("data-id");n(this,t),i()})})}),define("main",["jquery","module/util","lazyload","module/dialog","module/checkUserStatus"],function(e){"use strict";e(function(){function i(e){document.cookie=e+"=; expires=Thu, 01 Jan 1970 00:00:01 GMT;"}i("_OkLJ_%UJ"),e("#J_PendantClose").on("click",function(i){e(this).closest(".pendant").fadeOut()}),e("#J_Report")[0]&&e("#J_Report").click(function(){var i="";i+='<div class="main">',i+='<a class="qqNumber fw fs16" target="blank" href="http://wpa.qq.com/msgrd?V=3&uin=2976373015&Site=鐖卞璐峰湪绾夸妇鎶�&Menu=yes">',i+="2976373015</a>",i+='<div class="email fw fs16">',i+="fengkongbu@aixuedai.com</div>",i+="</div>",e.AXD.dialog.init({id:"J_ReportBookDialog",title:"涓炬姤鎷垮ぇ濂�",html:i,width:"900px"})}),aixuedai.userid>0&&requirejs(["module/cartCount","page/index/news"]),e(".J_MobileFee")[0]&&e(".J_MobileFee").on("click",function(i){i.preventDefault();var t=this;if(""==aixuedai.userid){var n="/login.html?url="+window.location.pathname+window.location.search;return window.location.href=n,!1}var a=e.AXD.checkUserStatus(t,{});if(!a)return!1;var s="";s+="<div >",s+='<iframe src="/recharge/gorechargepage.html" style="width:100%;height:500px;" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>',s+="</div>",e.AXD.dialog.init({id:"J_MobileFeeDialog",title:"璇濊垂鍏呭€�",html:s,width:"900px"})}),e("#J_menuTable")[0]&&(e(".header-bottom.fixed").find(".first").on("mouseenter",function(){e("#J_menuTable").animate({top:"44px"},300,"linear")}),e(".noIndexMenu").on("mouseenter",function(){e(document).scrollTop()<150&&(e("#J_noIndexMenuTable").parent().parent().find(".layout1200").css("height","400px"),e("#J_noIndexMenuTable").animate({top:"0px"},300,"linear"))}),e("#J_menuTable").on("mouseleave",function(){e("#J_menuTable").animate({top:"-355px"},300,"linear")}),e(".noIndexFixed").on("mouseleave",function(){e("#J_noIndexMenuTable").animate({top:"-345px"},300,"linear",function(){e("#J_noIndexMenuTable").parent().parent().find(".layout1200").css("height","0px")})}),e(window).scroll(function(){e("#J_menuTable").stop(),e("#J_menuTable").animate({top:"-347px"},300,"linear");var i=e(window).scrollTop();i>120?e.AXD.util.isIE6()||(e("#J_RSide").stop(),e("#J_RSide").animate({right:"0px"},"linear"),e("#header .header-bottom").addClass("fixed"),e(".menuBox .menu").stop(),e("#J_menuTable").show(),e(".menuBox .menu").animate({top:"-300px"},300,"linear")):e.AXD.util.isIE6()||(e("#J_RSide").stop(),e("#J_RSide").animate({right:"-80px"},"linear"),e("#header .header-bottom").removeClass("fixed"),e(".menuBox .menu").stop(),e("#J_menuTable").hide(),e(".menuBox .menu").animate({top:"0px"},300,"linear"))})),e("#J_RSide .to-top-icon").bind("click",function(){e("html,body").animate({scrollTop:"0px"},300)})})}),define("module/scroll",["jquery","module/util"],function(e){var i,t=1,n=null,a=3e3;e.AXD.scroll={init:function(){e("#pagination li a").on("mouseover",function(){var i=e(this);n&&clearTimeout(n),n=setTimeout(function(){e.AXD.scroll.stop();var t=e(window).width(),n=e("#ScrollMainIn").children().length,a=i.html()-1;e.AXD.scroll.go(t,a,n)},200)});var i=e(window).width(),a=0,s=e("#ScrollMainIn").children().length;e("#pagination").width(31*s),e("#pagination li").removeClass("current"),e("#pagination").children().eq(a).addClass("current"),e("#ScrollMainIn").find("a").eq(a).css("z-index",100+t),e(".url").attr("href",e("#ScrollMainIn").find("a").eq(a).attr("href")),a++,t++,e.AXD.scroll.move(i,a,s)},show:function(){var i=e(window).width(),t=0,n=e("#ScrollMainIn").children().length;e("#pagination").width(31*n),e("#ScrollMainIn a").hide(),e("#ScrollMainIn a b:first").hide(),e.AXD.scroll.go(i,t,n)},go:function(i,n,a){n==a&&(n=0),e("#pagination li").removeClass("current"),e("#pagination").children().eq(n).addClass("current"),e("#ScrollMainIn").find("a").eq(n).hide(),e("#ScrollMainIn").find("a").eq(n).css("z-index",100+t),e("#ScrollMainIn").find("a").eq(n).fadeIn(500),e("#ScrollMainIn").find("a").eq(n).find(".font").hide(),e("#ScrollMainIn").find("a").eq(n).find(".font").fadeIn(2e3),e(".url").attr("href",e("#ScrollMainIn").find("a").eq(n).attr("href")),n++,t++,e.AXD.scroll.move(i,n,a)},move:function(e,t,n){i=setTimeout("$.AXD.scroll.go("+e+","+t+","+n+")",a)},stop:function(){clearTimeout(i)}}}),define("page/index/index",["jquery","module/scroll","module/dialog"],function(e){e(function(){"use strict";datalazyload.init(),e(".leftBarBefore li").hover(function(){e(this).find("img").hide(),e(this).find("b").show()},function(){e(this).find("b").hide(),e(this).find("img").show()}),e(".leftBarBefore li").each(function(i){this.onclick=function(){e("html, body").animate({scrollTop:1108+650*i},"slow")}}),e(".menuSon").hover(function(){e(this).parent(".H_lastLine").find(".H_noli").css("background","url("+aixuedai.staticpath+"/images/index/H_rightLine.png) no-repeat right"),e(".H_lastLine").find(".H_noli:last").css("background","url("+aixuedai.staticpath+"/images/index/H_line.png)"),e(this).parent(".H_lastLine").find(".H_noli").removeClass("roof_hover"),e(this).find(".H_noli").addClass("roof_hover"),e(this).prev().find(".H_noli").css("background","url("+aixuedai.staticpath+"/images/index/H_line.png)")}),e(".H_media li").mouseover(function(){e(this).removeClass("changeColor")}),e(".H_media li").mouseout(function(){e(".H_media li").addClass("changeColor")}),e(document).on("mouseover",".goodsPic img",function(){e(this).stop(!1,!1).animate({left:"16px"},500)}),e(document).on("mouseout",".goodsPic img",function(){e(this).stop(!1,!1).animate({left:"26px"},500)}),e("#pagination li").length>1&&e.AXD.scroll.init();var i=0;e(document).scroll(function(){var t=e(document).scrollTop();if(e(document).scrollTop()>=1108){e(".leftBarBefore li img").show();var n=1;e(".leftBarBefore").removeClass("leftBarAfter li"),e(".leftBarBefore").addClass("leftBar li"),e(".leftBarBefore li").each(function(){e(this).css({animation:"inMove "+n+"s","-moz-animation":"inMove "+n+"s","-webkit-animation":"inMove "+n+"s","-o-animation":"inMove "+n+"s"}),n+=.2}),n+=.2}else if(e(document).scrollTop()<1108&&i>t){var n=1;e(".leftBarBefore li").removeAttr("style"),e(".leftBarBefore").removeClass("leftBar li"),e(".leftBarBefore").addClass("leftBarAfter li"),
e(".leftBarBefore li").each(function(){e(this).css({animation:"outMove "+n+"s","-moz-animation":"outMove "+n+"s","-webkit-animation":"outMove "+n+"s","-o-animation":"outMove "+n+"s"}),n+=.2})}i=t;var a=parseInt((t-1108)/650);parseInt((t-1108)/650)<0&&(a=0),e(".leftBarBefore li img").show(),e(".leftBarBefore li dd b").hide(),e(".leftBarBefore li img").eq(a).hide(),e(".leftBarBefore li dd b").eq(a).show()});var t=(e(document).scrollTop(),e(".H_lastLine .menuSon"));e(".goodsList");t.on("mouseenter",function(){var i=e(this),t=i.index();switch(i.closest(".roof").siblings(".floor").find(".goodsList").eq(t).removeClass("mis").siblings(".goodsList").addClass("mis"),e(this).attr("data-sending")){case"ON":if(e(this).attr("data-sending","OFF"),0!==t){var n=0==i.parents(".layout1200").find(".rightHotGoods > .title").length?"true":"false";e.get("/getItems?topflag="+n+"&cateid="+i.attr("data-cid"),function(e){e&&i.closest(".roof").siblings(".floor").find(".goodsList").eq(t).append(e)})}break;case"OFF":return!1}});var n=e("div.roof");n.each(function(){var i=e(this),t=e(this).find("b").attr("data-floorid");e.get("/common/getTopList?cateid="+t,function(e){e&&i.siblings(".floor").find(".rightHotGoods").append(e).css("background","none")})})})}),requirejs(["common"],function(e){requirejs(["main","page/index/index"])}),define("boot/index/index",function(){});