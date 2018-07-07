<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:18px;left:40px;height:auto;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="bankcodeData" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="bank" type="String" xid="xid2"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="绑定银行卡"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left" style="color:#808080;"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">绑定银行卡</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer1" style="background-color:white;"><div component="$UI/system/components/justep/row/row" class="x-row list-group-item" xid="row1">
   <div class="x-col x-col-fixed" xid="col2" style="width:80px;margin-top:10px;"><span xid="span1"><![CDATA[姓名]]></span></div>
   <div class="x-col" xid="col3"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" placeHolder="持卡人姓名" readonly="true"></input></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row list-group-item" xid="row2">
   <div class="x-col x-col-fixed" xid="col4" style="width:80px;margin-top:10px;">
    <span xid="span2"><![CDATA[卡号]]></span></div> 
   <div class="x-col" xid="col5">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2"></input></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row list-group-item" xid="row3">
   <div class="x-col x-col-fixed" xid="col6" style="width:80px;margin-top:10px;">
    <span xid="span3"><![CDATA[开户行]]></span></div> 
   <div class="x-col" xid="col7">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select1" bind-options="bankcodeData" bind-optionsValue="id" bind-optionsLabel="bank"></select></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="margin-top:20px;">
   <div class="x-col" xid="col10"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="确定" xid="submitBtn" onClick="submitBtnClick">
   <i xid="i1"></i>
   <span xid="span4">确定</span></a></div></div></div></div>
  </div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" message="请完整填写银行卡信息"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog2" message="银行卡绑定成功" onOK="messageDialog2OK"></span></div>