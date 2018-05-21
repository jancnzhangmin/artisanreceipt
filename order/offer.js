define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var orderid;
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event) {
		if (event.params.data) {
			orderid = event.params.data.id;
		}
	};

	Model.prototype.submitBtnClick = function(event){
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/setoffer",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				orderid : orderid,
				openid : openid,
				price:self.comp('priceInput').val(),
				summary:self.comp('summaryarea').val()
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
			self.close();

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	return Model;
});