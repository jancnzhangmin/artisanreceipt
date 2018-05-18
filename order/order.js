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
			url : url + "apis/getartisanbartask",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				var data = self.comp("receiptbartaskData");
				data.clear();
				$.each(jsonstr.bartasks, function(i, item) {

					var options = {
						defaultValues : [ {
							id : item.id,
							preprice : item.preprice,
							prvoince : item.province,
							city : item.city,
							district : item.district,
							address : item.address,
							status : item.status,
							installtime : item.installtime,
							ordernumber : item.ordernumber,
							contact : item.contact,
							contactphone : item.contactphone,
							measurecount : item.measurecount,
							transitcount : item.transitcount,
							fingercount : item.fingercount,
							bartaskdetailcount : item.bartaskdetailcount,
							openlockcount : item.openlockcount,
							artisancount:item.artisancount,
							hasoffer:item.hasoffer
						} ]
					};
					data.newData(options);
				});
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.li8Click = function(event){
		var row = event.bindingContext.$object;
		var params = {
			data : {
				id : row.val('id'),
				hasoffer:row.val('hasoffer')
			}
		}
		justep.Shell.showPage(require.toUrl("./orderdetail.w"), params);
	};

	return Model;
});