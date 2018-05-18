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
			url : url + "apis/getartisanservicecap",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data:{
			openid:openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				var data = self.comp("servicecapData");
				data.clear();
				$.each(jsonstr.servicecaps, function(i, item) {

					var options = {
						defaultValues : [ {
							id : item.id,
							servicecap : item.servicecap,
							flag:item.flag,
							servicecap_id:item.servicecap_id
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

	Model.prototype.button1Click = function(event){
	var row = event.bindingContext.$object;
	if(row.val('flag') == '1'){
	row.val('flag','0');
	}else
	{
	row.val('flag','1');
	}

	};

	Model.prototype.button2Click = function(event){
	var self = this;
		var vFD = new FormData();
		vFD.append("openid",openid);
		vFD.append("servicecapdata", JSON.stringify(this.comp('servicecapData').toJson({
			'format' : 'simple'
		})));
				oXHR = new XMLHttpRequest();
		oXHR.addEventListener('load', function(resUpload) {
		self.close();
		});
				oXHR.addEventListener('error', function() {
			// 失败
		}, false);
		oXHR.addEventListener('abort', function() {
			// 上传中断
		}, false);
		oXHR.open('POST', url + "apis/setservicecap");
		oXHR.send(vFD);
	};

	return Model;
});