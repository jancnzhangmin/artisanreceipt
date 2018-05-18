<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="servicecapData" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="servicecap" type="String" xid="xid2"></column>
  <column name="flag" type="String" xid="xid3"></column>
  <column name="servicecap_id" type="String" xid="xid4"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="服务能力"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left" style="color:#808080;"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">服务能力</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer1" style="background-color:white;"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="servicecapData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="col-xs-6 col-sm-4 text-center" style="padding:10px;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="button" xid="button1" bind-text=' val("servicecap")' bind-css='val("flag") == "1" ? "":"outline"' onClick="button1Click">
   <i xid="i1"></i>
   <span xid="span1"></span></a></li></ul> </div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="margin-top:10px;">
   <div class="x-col" xid="col3"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="提交" xid="button2" onClick="button2Click">
   <i xid="i2"></i>
   <span xid="span2">提交</span></a></div></div></div>
  </div> 
</div>