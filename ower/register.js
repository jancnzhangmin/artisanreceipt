define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var mytimer;
	var phone;
	var Model = function() {
		this.callParent();
	};

	Model.prototype.validateBtnClick = function(event) {
		if (this.comp('phoneInput').val() == '') {
			return false;
		}
		var timecount = 60;
		this.comp("validateBtn").set({
			"disabled" : true
		});
		var self = this;
		mytimer = window.setInterval(function() {
			self.comp("validateBtn").set({
				"label" : "重新发送" + timecount
			});
			timecount--;
			if (timecount < 0) {
				clearInterval(mytimer);
				self.comp("validateBtn").set({
					"disabled" : false,
					"label" : "获取验证码"
				});
			}

		}, 1000);

		phone = self.comp('phoneInput').val();
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/sendvcodesms",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				phone : phone,
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});

	};

	Model.prototype.modelUnLoad = function(event) {
		clearInterval(mytimer);
	};

	Model.prototype.idfontInputChange = function(event) {
		var self = this;
		var reader = new FileReader();
		if ($(self.getElementByXid("idfontInput")).val()) {

			var oFile = event.target.files[0];
			reader.readAsDataURL(oFile);
			reader.onload = function(e) {
				$(self.getElementByXid("idfontSpan")).css({
					"position" : "relative",
					"display" : "inline-block",
					"overflow" : "hidden",
					"background-image" : "url(" + this.result + ")",
					"background-size" : "cover",
					"width" : "300px",
					"height" : "188px"
				})
			}
			var vFD = new FormData();
			vFD.append("idfront", oFile);
			vFD.append("openid", openid);
			oXHR = new XMLHttpRequest();
			oXHR.addEventListener('load', function(resUpload) {
				// 成功
			}, false);
			oXHR.addEventListener('error', function() {
				// 失败
			}, false);
			oXHR.addEventListener('abort', function() {
				// 上传中断
			}, false);
			oXHR.open('POST', url + "apis/idfont");
			oXHR.send(vFD);
		}
	};

	Model.prototype.idbackInputChange = function(event) {
		var self = this;
		var reader = new FileReader();
		if ($(self.getElementByXid("idbackInput")).val()) {

			var oFile = event.target.files[0];
			reader.readAsDataURL(oFile);
			reader.onload = function(e) {
				$(self.getElementByXid("idbackSpan")).css({
					"position" : "relative",
					"display" : "inline-block",
					"overflow" : "hidden",
					"background-image" : "url(" + this.result + ")",
					"background-size" : "cover",
					"width" : "300px",
					"height" : "188px"
				})
			}
			var vFD = new FormData();
			vFD.append("idback", oFile);
			vFD.append("openid", openid);
			oXHR = new XMLHttpRequest();
			oXHR.addEventListener('load', function(resUpload) {
				// 成功
			}, false);
			oXHR.addEventListener('error', function() {
				// 失败
			}, false);
			oXHR.addEventListener('abort', function() {
				// 上传中断
			}, false);
			oXHR.open('POST', url + "apis/idback");
			oXHR.send(vFD);
		}
	};

	Model.prototype.bindbtnClick = function(event) {
		var errmsg = '';
		var flag = false;

		if (!$(this.getElementByXid("idbackInput")).val()) {
			errmsg = '请提交身份证背面图片';
			flag = true;
		}

		if (!$(this.getElementByXid("idfontInput")).val()) {
			errmsg = '请提交身份证正面图片';
			flag = true;
		}

		if (!this.comp('input1').val()) {
			errmsg = '无效的短信验证码';
			flag = true;
		}

		if (!this.comp('nameInput').val()) {
			errmsg = '姓名不能为空';
			flag = true;
		}

		if (!this.comp('phoneInput').val()) {
			errmsg = '手机号码不能为空';
			flag = true;
		}

		if (flag) {
			this.comp('messageDialog1').set({
				'message' : errmsg
			});
			this.comp('messageDialog1').show();
			return false;
		}
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/bindartisan",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				vcode : self.comp('input1').val(),
				phone : phone,
				openid : openid,
				name : self.comp('nameInput').val()
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				if (jsonstr.status == '0') {
					self.comp('messageDialog1').set({
						'message' : '无效的短信验证码'
					});
					self.comp('messageDialog1').show();
				}else{
									self.comp('messageDialog1').set({
						'message' : '注册成功'
					});
					self.comp('messageDialog1').show();
					self.close();
				}

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});

	};

	Model.prototype.span6Click = function(event){
justep.Shell.showPage(require.toUrl('./eula.w'));
	};

	Model.prototype.checkbox1Change = function(event){
if(this.comp('checkbox1').get('checked')){
this.comp('bindbtn').set({'disabled':false});
}else{
this.comp('bindbtn').set({'disabled':true});
}
	};

	return Model;
});