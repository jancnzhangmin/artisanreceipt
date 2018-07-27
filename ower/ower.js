define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var username = '';
	var Model = function() {
		this.callParent();
	};

	Model.prototype.div1Click = function(event) {
		if (username == '' && username != null) {
			justep.Shell.showPage(require.toUrl('./register.w'));
		}
	};

	Model.prototype.li2Click = function(event) {
		justep.Shell.showPage(require.toUrl('./servicecap.w'));
	};

	Model.prototype.li3Click = function(event) {
		this.comp('messageDialog1').show();
	};

	Model.prototype.li4Click = function(event) {
		// this.comp('messageDialog1').show();
		justep.Shell.showPage(require.toUrl('./servicearea.w'));
	};

	Model.prototype.li5Click = function(event) {
		justep.Shell.showPage(require.toUrl('./ranking.w'));
	};

	Model.prototype.li6Click = function(event) {
		justep.Shell.showPage(require.toUrl('./withdrawals.w'));
	};

	Model.prototype.modelActive = function(event) {
		this.refreshdata();
	};

	Model.prototype.refreshdata = function() {
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
				username = jsonstr.artisanuser.username;
				$(self.getElementByXid("span12")).text(parseFloat(jsonstr.artisanuser.score).toFixed(1));
				$(self.getElementByXid("span2")).text(jsonstr.artisanuser.ordercount + '单');
				//$(self.getElementByXid("span9")).text(jsonstr.artisanuser.ordercount);
				if (jsonstr.artisanuser.city == null) {
					$(self.getElementByXid("span6")).text('未设置');
				} else {
					$(self.getElementByXid("span6")).text(jsonstr.artisanuser.city);
				}
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
		justep.Shell.on("refreshdata", this.refreshdata, this);
		this.refreshdata();
	};

	Model.prototype.li7Click = function(event) {
		justep.Shell.showPage(require.toUrl('./qrcode.w'));
	};

	Model.prototype.li8Click = function(event) {
		justep.Shell.showPage(require.toUrl('./income.w'));
	};

	Model.prototype.li9Click = function(event){
justep.Shell.showPage(require.toUrl('./extract.w'));
	};

	return Model;
});