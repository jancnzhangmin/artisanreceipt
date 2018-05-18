<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onParamsReceive="modelParamsReceive"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="报价"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left" style="color:#808080;"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">报价</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer1"><ul xid="ul1"><li class="list-group-item" xid="li1">
   <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup4">
    <span class="input-group-addon" xid="span4"><![CDATA[我的报价]]></span>
    <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="priceInput"></input></div> </li>
  <li xid="li2" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col3"><span xid="span1"><![CDATA[我的描述]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="padding:0px;">
   <div class="x-col" xid="col6"><textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="summaryarea" style="height:300px;"></textarea></div></div></li></ul></div>
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col9"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" xid="submitBtn" label="提交" onClick="submitBtnClick">
   <i xid="i1"></i>
   <span xid="span2">提交</span></a></div></div></div>
  </div> 
</div>