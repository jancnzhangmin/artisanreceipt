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
			url : url + "apis/get_artisan_incomes",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
					var incomedata = self.comp("incomeData");
					incomedata.clear();
					$.each(jsonstr.incomes, function(i, item) {
					var score = 3.0;
					if(item.score != null){
					score = item.score;
					}
						var options = {
							defaultValues : [ {
								id : item.id,
								amount : parseFloat(item.amount).toFixed(2),
								created_at : justep.Date.toString(new Date(Date.parse(item.created_at)), "yyyy-MM-dd hh:mm:ss"),
								summary : item.summary
							} ]
						};
						incomedata.newData(options);
					});

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	return Model;
});