define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("css!../swiper-4.2.6/swiper.min").load();
	var Swiper = require("../swiper-4.2.6/swiper.min");
	var orderid;
	var bartaskproid;
	var swiper;
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {

	};

	Model.prototype.refreshdata = function() {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/getbartaskpro",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid,
				orderid : orderid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				var data = self.comp("bartaskproData");
				data.clear();
				var options = {
					defaultValues : [ {
						id : jsonstr.processtask.id,
						bartask_id : jsonstr.processtask.bartask_id,
						artisanuser_id : jsonstr.processtask.artisanuser_id,
						begintime : justep.Date.toString(new Date(Date.parse(jsonstr.processtask.begintime)), "yyyy-MM-dd hh:mm:ss"),
						endtime : justep.Date.toString(new Date(Date.parse(jsonstr.processtask.endtime)), "yyyy-MM-dd hh:mm:ss"),
						summary : jsonstr.processtask.summary
					} ]
				};
				data.newData(options);

				var data = self.comp("bartaskproimageData");
				data.clear();
				$.each(jsonstr.bartaskproimages, function(i, item) {
					var options = {
						defaultValues : [ {
							id : item.id,
							bartaskproimage : url + item.bartaskproimage
						} ]
					};
					data.newData(options);
				});

				bartaskproid = jsonstr.processtask.id;

//				$(self.getElementByXid("begindiv")).hide();
//				$(self.getElementByXid("begintimediv")).hide();
//				$(self.getElementByXid("enddiv")).hide();
//				$(self.getElementByXid("endtimediv")).hide();

				if (jsonstr.processtask.begintime == null) {
					$(self.getElementByXid("begindiv")).show();
				} else {
					$(self.getElementByXid("begintimediv")).show();
				}

				if (jsonstr.processtask.endtime == null) {
					$(self.getElementByXid("enddiv")).show();
				} else {
					$(self.getElementByXid("endtimediv")).show();
				}

			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.modelParamsReceive = function(event) {
		if (event.params.data) {
			orderid = event.params.data.orderid;
			this.refreshdata();
		}
	};

	Model.prototype.beginBtnClick = function(event) {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/beginservice",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				orderid : orderid,
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				self.refreshdata();
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.endBtnClick = function(event) {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/endservice",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				orderid : orderid,
				openid : openid,
				summary:self.comp('textarea1').val()
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				self.refreshdata();
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.imagefileChange = function(event) {
		var self = this;
		var reader = new FileReader();
		if ($(self.getElementByXid("imagefile")).val()) {

			var oFile = event.target.files[0];
			var vFD = new FormData();
			vFD.append("bartaskproimage", oFile);
			vFD.append("openid", openid);
			vFD.append("orderid", orderid);
			vFD.append("bartaskproid", bartaskproid);
			oXHR = new XMLHttpRequest();
			oXHR.addEventListener('load', function(resUpload) {
				// 成功
				self.refreshdata();
			}, false);
			oXHR.addEventListener('error', function() {
				// 失败
			}, false);
			oXHR.addEventListener('abort', function() {
				// 上传中断
			}, false);
			oXHR.open('POST', url + "apis/setbartaskimage");
			oXHR.send(vFD);
		}
	};

	Model.prototype.image1Click = function(event) {
		this.comp('popOver1').show();
		swiper = new Swiper('.swiper-container', {
			pagination : {
				el : '.swiper-pagination',
			},
		});
	};

	return Model;
});