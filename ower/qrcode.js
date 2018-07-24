define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var qrcodeurl = '';
	var wx = require("http://res.wx.qq.com/open/js/jweixin-1.2.0.js");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/createqrcode",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				openid : openid
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				qrcodeurl = url + jsonstr.qrcodeurl;
				$(self.getElementByXid("image1")).attr('src', qrcodeurl);
			},
			error : function(xhr) {
				// justep.Util.hint("错误，请检查网络");
			}
		});

	};

	Model.prototype.wxready = function(jsonstr) {
		wx.config({
			debug : false,
			appId : jsonstr.appId,
			timestamp : jsonstr.timestamp,
			nonceStr : jsonstr.nonceStr,
			signature : jsonstr.signature,
			jsApiList : [ 'onMenuShareAppMessage', 'onMenuShareTimeline', 'onMenuShareQQ', 'onMenuShareWeibo', 'onMenuShareQZone' ]
		});
	};

	Model.prototype.image2Click = function(event) {

		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/sign",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				url : window.location.href
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				wx.config({
					debug : false,
					appId : jsonstr.appId,
					timestamp : jsonstr.timestamp,
					nonceStr : jsonstr.nonceStr,
					signature : jsonstr.signature,
					jsApiList : [ 'onMenuShareAppMessage', 'onMenuShareTimeline', 'onMenuShareQQ', 'onMenuShareWeibo', 'onMenuShareQZone' ]
				});

				wx.checkJsApi({
					jsApiList : [ 'onMenuShareAppMessage' ], // 需要检测的JS接口列表，所有JS接口列表见附录2,
					success : function(res) {
						wx.ready(function() {
							wx.onMenuShareAppMessage({
								title : '刘叔叔', // 分享标题
								desc : '这是一个测试', // 分享描述
								link : qrcodeurl, // 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
								imgUrl : qrcodeurl, // 分享图标
								type : '', // 分享类型,music、video或link，不填默认为link
								dataUrl : '', // 如果type是music或video，则要提供数据链接，默认为空
								success : function() {
									alert('分享成功');
									// 用户点击了分享后执行的回调函数
								},
								cancel : function() {
									// 用户取消分享后执行的回调函数
									alert('用户已取消');
								}
							});
						});

						// 以键值对的形式返回，可用的api值true，不可用为false
						// 如：{"checkResult":{"chooseImage":true},"errMsg":"checkJsApi:ok"}
					}
				});

			},
			error : function(xhr) {
				justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.image3Click = function(event) {

		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/sign",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				url : window.location.href
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				wx.config({
					debug : true,
					appId : jsonstr.appId,
					timestamp : jsonstr.timestamp,
					nonceStr : jsonstr.nonceStr,
					signature : jsonstr.signature,
					jsApiList : [ 'onMenuShareAppMessage', 'onMenuShareTimeline', 'onMenuShareQQ', 'onMenuShareWeibo', 'onMenuShareQZone' ]
				});

				wx.ready(function() {
					wx.onMenuShareTimeline({
						title : '刘叔叔asdfasdfasdfasdf', // 分享标题
						// desc : '这是一个测试', // 分享描述
						link : window.location.href.split("#")[0], // 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
						imgUrl : 'http://artisan.liushushu.com/idfronts/1/image.jpg', // 分享图标
						// type : '', // 分享类型,music、video或link，不填默认为link
						// dataUrl : '', // 如果type是music或video，则要提供数据链接，默认为空
						success : function() {
							alert(qrcodeurl);
							// 用户点击了分享后执行的回调函数
						},
						fail : function(res) {
							alert(JSON.stringify(res));
						}
					});
				});
			},
			error : function(xhr) {
				justep.Util.hint("错误，请检查网络");
			}
		});
	};

	Model.prototype.image4Click = function(event) {
		var self = this;
		$.ajax({
			async : false,
			url : url + "apis/sign",
			type : "GET",
			dataType : 'jsonp',
			jsonp : 'callback',
			timeout : 5000,
			data : {
				url : window.location.href
			},
			success : function(jsonstr) {// 客户端jquery预先定义好的callback函数,成功获取跨域服务器上的json数据后,会动态执行这个callback函数
				wx.config({
					debug : true,
					appId : jsonstr.appId,
					timestamp : jsonstr.timestamp,
					nonceStr : jsonstr.nonceStr,
					signature : jsonstr.signature,
					jsApiList : [ 'onMenuShareAppMessage', 'onMenuShareTimeline', 'onMenuShareQQ', 'onMenuShareWeibo', 'onMenuShareQZone' ]
				});

				wx.ready(function() {

					wx.onMenuShareQQ({
						title : '刘叔叔', // 分享标题
						desc : '这是一个测试', // 分享描述
						link : window.location.href.split("#")[0], // 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
						imgUrl : qrcodeurl, // 分享图标
						type : '', // 分享类型,music、video或link，不填默认为link
						dataUrl : '', // 如果type是music或video，则要提供数据链接，默认为空
						success : function() {
							// 用户点击了分享后执行的回调函数
						},
						fail : function(res) {
							alert(res);
						}
					});
				});
			},
			error : function(xhr) {
				justep.Util.hint("错误，请检查网络");
			}
		});
	};

	return Model;
});