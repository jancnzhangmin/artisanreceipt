<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="ordercontent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer1" src="$UI/artisanreceipt/order/order.w"></div></div>
  <div class="x-contents-content" xid="owercontent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer2" src="$UI/artisanreceipt/ower/ower.w"></div></div></div></div>
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="新订单" xid="button1" target="ordercontent" icon="fa fa-file-text-o">
    <i xid="i1" class="fa fa-file-text-o"></i>
    <span xid="span1">新订单</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="我的" xid="button2" target="owercontent" icon="fa fa-user">
    <i xid="i2" class="fa fa-user"></i>
    <span xid="span2">我的</span></a> </div></div></div>
  <resource xid="resource2"><require xid="require1" url="css!$UI/artisanreceipt/font-awesome-4.7.0/css/fa.icons"></require></resource></div>