define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
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
				var areadata = self.comp("areareceiptbartaskData");
				data.clear();
				areadata.clear();
				$.each(jsonstr.bartasks, function(i, item) {
var paytype = '发单人支付';
if(item.paytype == 1){
paytype= '现场客户支付';
}else if(item.paytype == 2){
paytype= '省心全包报价';
}
					var options = {
						defaultValues : [ {
							id : item.id,
							preprice : item.preprice,
							prvoince : item.province,
							city : item.city,
							district : item.district,
							address : item.address,
							status : item.status,
							installtime : justep.Date.toString(new Date(Date.parse(item.installtime)), "yyyy-MM-dd"),
							ordernumber : item.ordernumber,
							contact : item.contact,
							contactphone : item.contactphone,
							measurecount : item.measurecount,
							transitcount : item.transitcount,
							fingercount : item.fingercount,
							bartaskdetailcount : item.bartaskdetailcount,
							openlockcount : item.openlockcount,
							artisancount : item.artisancount,
							hasoffer : item.hasoffer,
							offerstatus : item.offerstatus,
							servicetype:item.servicetype,
							paytype:paytype
						} ]
					};

					data.newData(options);
					areadata.newData(options);
				});
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.getareadata = function() {
		var province = this.comp('provinceSelect1').val();
		var city = this.comp('citySelect1').val();
		var district = this.comp('districtSelect1').val();
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getareaartisanbartask",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid,
				province : province,
				city : city,
				district : district
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				var areadata = self.comp("areareceiptbartaskData");
				areadata.clear();
				$.each(jsonstr.bartasks, function(i, item) {
var paytype = '发单人支付';
if(item.paytype == 1){
paytype= '现场客户支付';
}else if(item.paytype == 2){
paytype= '省心全包报价';
}
					var options = {
						defaultValues : [ {
							id : item.id,
							preprice : item.preprice,
							prvoince : item.province,
							city : item.city,
							district : item.district,
							address : item.address,
							status : item.status,
							installtime : justep.Date.toString(new Date(Date.parse(item.installtime)), "yyyy-MM-dd"),
							ordernumber : item.ordernumber,
							contact : item.contact,
							contactphone : item.contactphone,
							measurecount : item.measurecount,
							transitcount : item.transitcount,
							fingercount : item.fingercount,
							bartaskdetailcount : item.bartaskdetailcount,
							openlockcount : item.openlockcount,
							artisancount : item.artisancount,
							hasoffer : item.hasoffer,
							offerstatus : item.offerstatus,
							servicetype:item.servicetype,
							paytype:paytype
						} ]
					};
					areadata.newData(options);
				});
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});

	};

	Model.prototype.li8Click = function(event) {
		var row = event.bindingContext.$object;
		var params = {
			data : {
				id : row.val('id'),
				hasoffer : row.val('hasoffer'),
				offerstatus : row.val('offerstatus')
			}
		}
		justep.Shell.showPage(require.toUrl("./orderdetail.w"), params);
	};

	Model.prototype.provinceSelect1Change = function(event) {
		this.comp('provinceData').clear();
		var options = {
			defaultValues : [ {
				province : this.comp('provinceSelect1').val(),
			} ]
		};
		this.comp('provinceData').newData(options);
		this.getareadata();
	};

	Model.prototype.citySelect1Change = function(event) {
			this.comp('cityData').clear();
		var options = {
			defaultValues : [ {
				city : this.comp('citySelect1').val(),
			} ]
		};
		this.comp('cityData').newData(options);
		this.getareadata();
	};

	Model.prototype.districtSelect1Change = function(event) {
		this.getareadata();
	};

	return Model;
});