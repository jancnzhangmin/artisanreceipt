var url = 'http://artisan.liushushu.com/';
var url = 'http://192.168.0.106:3000/';

var openid;
var openid='jancn';
define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');

	var Model = function() {
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"main" : {
					url : require.toUrl('./main.w')
				}
			}
		})

	};

	Model.prototype.modelLoad = function(event){
//			openid = this.getContext().getRequestParameter("openid");
		$.ajax({
			async : false,
			url : url + "apis/setwxartisaninfo",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
		justep.Shell.showPage("main");
	};

	return Model;
});