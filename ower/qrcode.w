<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="我的二维码"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left" style="color:#808080;"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">我的二维码</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><img src=" " alt="" xid="image1" style="width:100%;"></img>
  </div>
  <div class="x-panel-bottom" xid="bottom2" height="80"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col text-center" xid="col1"><img src="$UI/artisanreceipt/image/weixin.png" alt="" xid="image2" style="width:80%;" bind-click="image2Click"></img></div>
   <div class="x-col text-center" xid="col2"><img src="$UI/artisanreceipt/image/pengyouquan.png" alt="" xid="image3" style="width:80%;" bind-click="image3Click"></img></div>
   <div class="x-col text-center" xid="col3"><img src="$UI/artisanreceipt/image/qq.jpg" alt="" xid="image4" style="width:80%;" bind-click="image4Click"></img></div>
  <div class="x-col text-center" xid="col4"><img src="$UI/artisanreceipt/image/kongjian.png" alt="" xid="image5" style="width:80%;"></img></div>
  <div class="x-col text-center" xid="col5"><img src="$UI/artisanreceipt/image/weibo.png" alt="" xid="image6" style="width:80%;"></img></div></div></div></div> 
</div>