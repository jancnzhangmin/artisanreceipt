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
			url : url + "apis/getbankcode",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				var bankcodedata = self.comp("bankcodeData");
				bankcodedata.clear();
				$.each(jsonstr.bankcode, function(i, item) {
					var options = {
						defaultValues : [ {
							id : item.id,
							bank : item.bank
						} ]
					};
					bankcodedata.newData(options);
				});
				self.comp('input1').val(jsonstr.artisanuser.username);
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.submitBtnClick = function(event) {
		var self = this;
		if (!self.comp('input1').val() || !self.comp('input2').val() || !self.comp('select1').val()) {
			self.comp('messageDialog1').show();
			return false;
		}

		$.ajax({
			async : false,
			url : url + "apis/bindbankcard",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid,
				name : self.comp('input1').val(),
				cardnumber : self.comp('input2').val(),
				bankcodeid : self.comp('select1').val()
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				self.comp('messageDialog2').show();
				
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.messageDialog2OK = function(event){
this.close();
	};

	return Model;
});