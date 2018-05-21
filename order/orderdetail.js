define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
var orderid;
var hasoffer;
	var Model = function() {
		this.callParent();
	};

Model.prototype.refreshdata = function(){

		if(hasoffer == '1'){
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getoffer",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				orderid : orderid,
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
					var offdata = self.comp("offerData");
					offdata.clear();
					
						var options = {
							defaultValues : [ {
								id : jsonstr.offer.id,
								price:jsonstr.offer.price,
								summary : jsonstr.offer.summary
							} ]
						};
						offdata.newData(options);
					
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
					
		}
		
			var self = this;
			$.ajax({
				async : false,
				url : url + "apis/getbartaskdetail",
				type : "GET",
				dataType : 'jsonp',
				jsonp : 'callback',
				timeout : 5000,
				data : {
					id : orderid
				},
				success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
					var data = self.comp("bartaskData");
					data.clear();
					var options = {
						defaultValues : [ {
							id : jsonstr.bartask.id,
							preprice : parseFloat(jsonstr.bartask.preprice).toFixed(2),
							province : jsonstr.bartask.province,
							city : jsonstr.bartask.city,
							district : jsonstr.bartask.district,
							address : jsonstr.bartask.address,
							status : jsonstr.bartask.status,
							installtime : justep.Date.toString(new Date(Date.parse(jsonstr.bartask.installtime)), "yyyy-MM-dd"),
							ordernumber : jsonstr.bartask.ordernumber,
							created_at : jsonstr.bartask.created_at,
							updated_at : jsonstr.bartask.updated_at,
							contact : jsonstr.bartask.contact,
							contactphone : jsonstr.bartask.contactphone,
							summary : jsonstr.bartask.summary,
							paytype : jsonstr.bartask.paytype
						} ]
					};
					data.newData(options);

					var measuredata = self.comp("measureData");
					measuredata.clear();
					$.each(jsonstr.measures, function(i, item) {
						var options = {
							defaultValues : [ {
								id : item.id,
								summary : item.summary
							} ]
						};
						measuredata.newData(options);
					});

					var transitdata = self.comp("transitData");
					transitdata.clear();
					$.each(jsonstr.transits, function(i, item) {
						var options = {
							defaultValues : [ {
								id : item.id,
								startaddresss : item.start,
								endaddress : item.end
							} ]
						};
						transitdata.newData(options);
					});

					var bartaskdetaildata = self.comp("bartaskdetailData");
					bartaskdetaildata.clear();
					$.each(jsonstr.bartaskdetails, function(i, item) {
						var options = {
							defaultValues : [ {
								id : item.id,
								bartask_id : item.bartask_id,
								product : item.product,
								lock : item.lock
							} ]
						};
						bartaskdetaildata.newData(options);
					});

					var barbasedata = self.comp("barbaseData");
					barbasedata.clear();
					$.each(jsonstr.barbasedefs, function(i, item) {
						var options = {
							defaultValues : [ {
								id : item.id,
								bartaskdetail_id : item.bartaskdetail_id,
								name : item.name,
								summary : item.summary
							} ]
						};
						barbasedata.newData(options);
					});

					var barincrementdata = self.comp("barincrementData");
					barincrementdata.clear();
					$.each(jsonstr.barincrementdefs, function(i, item) {
						var options = {
							defaultValues : [ {
								id : item.id,
								bartaskdetail_id : item.bartaskdetail_id,
								name : item.name,
								summary : item.summary
							} ]
						};
						barincrementdata.newData(options);
					});

					var fingerdata = self.comp("fingerData");
					fingerdata.clear();
					$.each(jsonstr.barincrementdefs, function(i, item) {
						var options = {
							defaultValues : [ {
								id : item.id,
								model : item.model,
								summary : item.summary
							} ]
						};
						fingerdata.newData(options);
						
					});
					
															var openlockdata = self.comp("openlockData");
					openlockdata.clear();
					$.each(jsonstr.openlocks, function(i, item) {
						var options = {
							defaultValues : [ {
								id : item.id,
								summary : item.summary
							} ]
						};
						openlockdata.newData(options);
					});

				},
				error : function(xhr) {
					justep.Util.hint("错误，请检查网络");
				}
			});
		
};

	Model.prototype.modelParamsReceive = function(event) {
	orderid = event.params.data.id;
	hasoffer = event.params.data.hasoffer;
	if (event.params.data) {
		this.refreshdata();
		}
	};

	Model.prototype.offerBtnClick = function(event){
		
		var params = {
			data : {
				id : orderid
			}
		}
		justep.Shell.showPage(require.toUrl("./offer.w"), params);
	};

	Model.prototype.modelActive = function(event){
this.refreshdata();
	};

	return Model;
});