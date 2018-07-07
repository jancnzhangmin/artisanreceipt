define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelLoad = function(event){
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getwithdrawrecord",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				var withdrawrecorddata = self.comp("withdrawrecordData");
				withdrawrecorddata.clear();
				$.each(jsonstr.withdraws, function(i, item) {
				var cardnumber = '';
				var withdrawto = '微信';
				if(item.withdrawto == 1){
				cardnumber = item.cardnumber.substr(-4, 4);
				var withdrawto = '银行卡';
				}
					var options = {
						defaultValues : [ {
							id : item.id,
							amount : parseFloat(item.amount).toFixed(2),
							bankname:item.bankname,
							cardnumber:cardnumber,
							bank:item.bank,
							withdrawto:item.withdrawto,
							tradeno:item.tradeno,
							summary:item.summary,
							created_at:justep.Date.toString(new Date(Date.parse(item.created_at)), "yyyy-MM-dd hh:mm:ss")
						} ]
					};
					withdrawrecorddata.newData(options);
				});

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	return Model;
});