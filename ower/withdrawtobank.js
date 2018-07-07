define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var bankcardid = 0;
	var amount = 0;
	var Model = function() {
		this.callParent();
	};

	Model.prototype.bindbankcardBtnClick = function(event) {
		justep.Shell.showPage(require.toUrl('./bindbankcard.w'))
	};

	Model.prototype.modelLoad = function(event) {
		this.refreshdata();
	};

	Model.prototype.refreshdata = function() {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getbankcards",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				var bankcarddata = self.comp("bankcardData");
				bankcarddata.clear();
				$.each(jsonstr.bankcards, function(i, item) {
					var options = {
						defaultValues : [ {
							id : item.id,
							name : item.name,
							cardnumber : item.cardnumber,
							bankcode : item.bankcode,
							isselect : 0
						} ]
					};
					bankcarddata.newData(options);
				});
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.button2Click = function(event) {
		var row = event.bindingContext.$object;
		bankcardid = row.val('id');
		this.comp('messageDialog1').show();
	};

	Model.prototype.modelActive = function(event) {
		this.refreshdata();
	};

	Model.prototype.messageDialog1Yes = function(event) {
		var row = event.bindingContext.$object;
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/deletebankcard",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				bankcardid : bankcardid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				self.refreshdata();
				bankcardid = 0;
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.li1Click = function(event) {
		this.comp('bankcardData').each(function(param) {
			param.row.val('isselect', 0);
		});
		var row = event.bindingContext.$object;
		row.val('isselect', 1);
		bankcardid = row.val('id');
	};

	Model.prototype.withdrawBtnClick = function(event) {
		if (bankcardid == 0) {
			justep.Util.hint('请选择要提现的银行卡');
			return false;
		}
		if(amount == 0){
		justep.Util.hint('未知错误');
		return false;
		}
		var self = this;
		$.ajax({
			async : false,
			url : url + "paybanks/payuser",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid,
				bankcardid : bankcardid,
				amount:amount
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
			if(jsonstr.status == 1){
				amount = 0;
				bankcardid = 0;
				self.comp('successmessageDialog').show();
				}else{
				self.comp('failmessageDialog').show();
				}
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.modelParamsReceive = function(event){
		if (event.params.data) {
			amount = event.params.data.amount;
			$(this.getElementByXid("span8")).text('￥' + parseFloat(amount).toFixed(2));
			}
	};

	Model.prototype.successmessageDialogOK = function(event){
	this.close();
	};

	return Model;
});