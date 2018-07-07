define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var candraw = 0;
	var step = 0;
	var pwdtype = 'withdraw';// withdraw提现，change改密码
	var pwd1 = '';
	var pwd2 = '';
	var mytimer;
	var phone;
	var Model = function() {
		this.callParent();
		step = 0;
	};

	Model.prototype.numClick = function(event) {
		var self = this;
		if (event != undefined) {
			if (step < 6) {
				$(".mm_box li").eq(step).addClass("mmdd");

				$(".mm_box li").eq(step).attr("data", event.target.innerText);
				step++;
				if (step == 6) {
					setTimeout(function() {
						var data = "";
						$(".mm_box li").each(function() {
							data += $(this).attr("data");
						});
						if (pwd1 == '') {
							pwd1 = data;
							$(self.getElementByXid("span9")).text('请再次输入密码');
							$(".mm_box li").removeClass("mmdd");
							$(".mm_box li").attr("data", "");
							step = 0;
						} else {
							pwd2 = data;
						}

						if (pwd1.length == 6 && pwd2.length == 6 && pwd1 == pwd2) {
							$.ajax({
								async : false,
								url : url + "apis/setwithdrawpwd",
								type : "GET",
								dataType : 'jsonp',
								jsonp : 'callback',
								timeout : 5000,
								data : {
									openid : openid,
									password:pwd1
								},
								success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
									justep.Util.hint('设置密码成功！');
									pwd1 = '';
									pwd2 = '';
									self.close();

								},
								error : function(xhr) {
									// justep.Util.hint("错误，请检查网络");
								}
							});
						} else if (pwd1.length == 6 && pwd2.length == 6 && pwd1 != pwd2) {
							pwd1 = '';
							pwd2 = '';
							$(self.getElementByXid("span9")).text('两次密码输入不一致');
							$(".mm_box li").removeClass("mmdd");
							$(".mm_box li").attr("data", "");
							step = 0;
						}

					}, 100);
				}
				;
			}
		}
	};

	Model.prototype.button1Click = function(event) {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/checkartisanuservcode",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid,
				vcode:self.comp('candrawInput').val()
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				if (jsonstr.status == '1') {
					self.comp('popOver1').show();
					$(".numb_box").slideDown(500);
				} else {
					self.comp('messageDialog1').show();
				}
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});

	};

	Model.prototype.image3Click = function(event) {
		$(".numb_box").slideUp(500);
		this.comp('popOver1').hide();
	};

	Model.prototype.numdelClick = function(event) {
		if (step > 0) {
			step--;
			$(".mm_box li").eq(step).removeClass("mmdd");
			$(".mm_box li").eq(step).attr("data", "");
		}
	};

	Model.prototype.numemptyClick = function(event) {
		$(".mm_box li").removeClass("mmdd");
		$(".mm_box li").attr("data", "");
		step = 0;
	};

	Model.prototype.validateBtnClick = function(event) {

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

		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/sendwithdrawvcodesms",
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
	};

	Model.prototype.modelUnLoad = function(event) {
		clearInterval(mytimer);
	};

	Model.prototype.li11Click = function(event) {

	};

	Model.prototype.modelLoad = function(event) {

	};

	return Model;
});