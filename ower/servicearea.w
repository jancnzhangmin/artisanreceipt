<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="provinceData" idColumn="province"><column name="province" type="String" xid="xid1"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cityData" idColumn="city"><column name="city" type="String" xid="xid2"></column></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="服务区域"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left" style="color:#808080;"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-weight:lighter;color:#808080;">服务区域
  </div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer1" style="background-color:white;padding-top:15px;padding-bottom:15px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0px;">
   <div class="x-col" xid="col1"><select component="$UI/system/components/justep/distpicker/provinceSelect" class="form-control" xid="provinceSelect1" onChange="provinceSelect1Change"></select></div>
   <div class="x-col" xid="col2"><select component="$UI/system/components/justep/distpicker/citySelect" class="form-control" xid="citySelect1" onChange="citySelect1Change" bind-provinceRef='$model.provinceData.val("province")'></select></div>
   </div>
  </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="margin-top:30px;">
   <div class="x-col" xid="col6"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="更新服务区域" xid="updateBtn" disabled="true" onClick="updateBtnClick">
   <i xid="i1"></i>
   <span xid="span1">更新服务区域</span></a></div></div></div>
  </div> 
</div>