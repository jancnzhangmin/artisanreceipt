define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var candraw = 0;
	var _i = 0;
	var pwdtype = 'withdraw';// withdraw提现，change改密码
	var pwd1 = '';
	var pwd2 = '';
	var Model = function() {
		this.callParent();
		_i = 0;
	};

	Model.prototype.modelLoad = function(event) {
this.refreshdata();

	};
	
	Model.prototype.refreshdata = function(){
			$(".numb_box").slideUp(500);

		var self = this;
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
				$(self.getElementByXid("span1")).text(parseFloat(jsonstr.avaamount).toFixed(2));
				$(self.getElementByXid("span13")).text(parseFloat(jsonstr.avaamount).toFixed(2));
				candraw = parseFloat(jsonstr.avaamount).toFixed(2);
				self.comp('candrawInput').val(candraw);
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.withdrawBtnClick = function(event) {
		var self = this;
		if (parseFloat(this.comp('candrawInput').val()) < 1) {
			justep.Util.hint('提现金额不能低于1元');
		} else if (parseFloat(this.comp('candrawInput').val()) > parseFloat($(self.getElementByXid("span1")).text())) {
			justep.Util.hint('余额不足');

		} else {
			$(self.getElementByXid("span9")).text('￥' + parseFloat(this.comp('candrawInput').val()).toFixed(2));
			self.comp('popOver1').show();
			$(".numb_box").slideDown(500);
		}
	};

	Model.prototype.numClick = function(event) {
		var self = this;
		if (event != undefined) {
			if (_i < 6) {
				$(".mm_box2 li").eq(_i).addClass("mmdd");

				$(".mm_box2 li").eq(_i).attr("data", event.target.innerText);
				_i++
				if (_i == 6) {
					setTimeout(function() {
						var data = "";
						$(".mm_box2 li").each(function() {
							data += $(this).attr("data");
						});
						// alert("支付成功" + data);

						$.ajax({
							async : false,
							url : url + "apis/checkwithdrawpwd",
							type : "GET",
							dataType : 'jsonp',
							jsonp : 'callback',
							timeout : 5000,
							data : {
								openid : openid,
								amount : parseFloat(self.comp('candrawInput').val()),
								password : data
							},
							success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
								if (jsonstr.status == 0) {
									justep.Util.hint('未设置提现密码');
								} else if (jsonstr.status == 1) {
									self.comp('messageDialog1').set({
										'message' : '密码错误'
									});
									self.comp('messageDialog1').show();

									// $(self.getElementByXid("span9")).text(parseFloat(this.comp('candrawInput').val()).toFixed(2));
								} else if (jsonstr.status == 2) {
									self.comp('messageDialog1').set({
										'message' : '提现错误，请联系客服'
									});
									self.comp('messageDialog1').show();
								} else {
									self.comp('messageDialog1').set({
										'message' : '提现成功'
									});
									self.comp('messageDialog1').show();
								}
							},
							error : function(xhr) {
								// justep.Util.hint("错误，请检查网络");
							}
						});

					}, 100);
				}
				;
			}
		}
	};

	Model.prototype.numemptyClick = function(event) {
		$(".mm_box2 li").removeClass("mmdd");
		$(".mm_box2 li").attr("data", "");
		_i = 0;
	};

	Model.prototype.numdelClick = function(event) {
		if (_i > 0) {
			_i--;
			$(".mm_box2 li").eq(_i).removeClass("mmdd");
			$(".mm_box2 li").eq(_i).attr("data", "");
		}

	};

	Model.prototype.image3Click = function(event) {
		$(".numb_box").slideUp(500);
		this.comp('popOver1').hide();
	};

	Model.prototype.messageDialog1OK = function(event) {
		$(this.getElementByXid("span9")).text('请输入提现密码');
		pwdtype = 'change';
		this.comp('popOver1').show();
		$(".numb_box").slideDown(500);
		// $(this.getElementByXid("span9")).text(parseFloat(this.comp('candrawInput').val()).toFixed(2));
	};

	Model.prototype.changeBtnClick = function(event) {
		justep.Shell.showPage(require.toUrl('./changewithdrawpwd.w'));
	};

	Model.prototype.withdrawtobankClick = function(event) {
		var params = {
			data : {
				amount : this.comp('candrawInput').val()
			}
		}
		justep.Shell.showPage(require.toUrl('./withdrawtobank.w'),params);
	};

	Model.prototype.modelActive = function(event){
this.refreshdata();
	};

	Model.prototype.withdrawrecordBtnClick = function(event){
justep.Shell.showPage(require.toUrl('./withdrawrecord.w'));
	};

	return Model;
});