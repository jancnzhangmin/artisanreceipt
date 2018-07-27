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
			url : url + "apis/getranking",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				var data = self.comp("countryData");
				data.clear();
				var sort = 1;
				$.each(jsonstr.country, function(i, item) {
					var options = {
						defaultValues : [ {
							id : item.id,
							username : item.username,
							headurl : item.headurl,
							aver : item.aver,
							city:item.city,
							sort:sort
						} ]
					};
					data.newData(options);
					sort++;
				});
				$(self.getElementByXid("span5")).text(jsonstr.mycountry);
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	return Model;
});