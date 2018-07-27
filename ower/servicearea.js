define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.provinceSelect1Change = function(event) {

		this.comp('provinceData').clear();
		var options = {
			defaultValues : [ {
				province : this.comp('provinceSelect1').val()
			} ]
		};
		this.comp('provinceData').newData(options);

		if (!this.comp('provinceSelect1').val() || !this.comp('citySelect1').val()) {
			this.comp('updateBtn').set({
				'disabled' : true
			});
		} else {
			this.comp('updateBtn').set({
				'disabled' : false
			});
		}
	};

	Model.prototype.citySelect1Change = function(event) {

		if (!this.comp('provinceSelect1').val() || !this.comp('citySelect1').val()) {
			this.comp('updateBtn').set({
				'disabled' : true
			});
		} else {
			this.comp('updateBtn').set({
				'disabled' : false
			});
		}
	};

	Model.prototype.modelLoad = function(event) {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getartisaninfo",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				// alert(jsonstr.artisanuser.city);
				if (jsonstr.artisanuser.province != null) {
					self.comp('provinceSelect1').val(jsonstr.artisanuser.province);
					self.comp('provinceData').clear();
					var options = {
						defaultValues : [ {
							province : jsonstr.artisanuser.province
						} ]
					};
					self.comp('provinceData').newData(options);
					self.comp('citySelect1').val(jsonstr.artisanuser.city);
				}
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.updateBtnClick = function(event) {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/set_artisan_area_server",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid,
				province : self.comp('provinceSelect1').val(),
				city : self.comp('citySelect1').val()
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				justep.Shell.fireEvent("refreshdata", {
					id : 'id的值'
				});

				self.close();
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	return Model;
});