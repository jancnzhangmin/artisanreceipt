define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.div1Click = function(event) {
		justep.Shell.showPage(require.toUrl('./register.w'));
	};

	Model.prototype.li2Click = function(event) {
		justep.Shell.showPage(require.toUrl('./servicecap.w'));
	};

	Model.prototype.li3Click = function(event) {
		this.comp('messageDialog1').show();
	};

	Model.prototype.li4Click = function(event) {
		//this.comp('messageDialog1').show();
		justep.Shell.showPage(require.toUrl('./appraise.w'));
	};

	Model.prototype.li5Click = function(event) {
		this.comp('messageDialog1').show();
	};

	Model.prototype.li6Click = function(event) {
		justep.Shell.showPage(require.toUrl('./withdrawals.w'));
	};

	Model.prototype.modelActive = function(event) {

		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getartisaninfo",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				$(this.getElementByXid("span1")).val(jsonstr.artisanuser.username);
				$(self.getElementByXid("image37")).attr('src', jsonstr.artisanuser.headurl);
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});

		$.ajax({
			async : false,
			url : url + "apis/avaamount",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				$(self.getElementByXid("span11")).text(parseFloat(jsonstr.avaamount).toFixed(2) + '元');
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});

	};

	Model.prototype.modelLoad = function(event) {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getartisaninfo",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				$(self.getElementByXid("span1")).text(jsonstr.artisanuser.username);
				$(self.getElementByXid("image37")).attr('src', jsonstr.artisanuser.headurl);
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
				$.ajax({
			async : false,
			url : url + "apis/avaamount",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				$(self.getElementByXid("span11")).text(parseFloat(jsonstr.avaamount).toFixed(2) + '元');
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.li7Click = function(event){
justep.Shell.showPage(require.toUrl('./qrcode.w'));
	};

	return Model;
});