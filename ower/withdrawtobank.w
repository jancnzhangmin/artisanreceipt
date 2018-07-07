<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad" onActive="modelActive" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="bankcardData" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="name" type="String" xid="xid2"></column>
  <column name="cardnumber" type="String" xid="xid3"></column>
  <column name="bankcode" type="String" xid="xid4"></column>
  <column name="isselect" type="String" xid="xid5"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="提现至银行卡"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left" style="color:#808080;"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">提现至银行卡</div>  
          <div class="x-titlebar-right reverse" style="padding-top:10px;"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="绑定银行卡" xid="bindbankcardBtn" style="color:#2671b9;font-size:small;" onClick="bindbankcardBtnClick">
   <i xid="i1"></i>
   <span xid="span1">绑定银行卡</span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col text-center" xid="col10"><![CDATA[]]>
  <span xid="span10"><![CDATA[本次提现]]></span><span xid="span8" style="color:#ff651a;font-size:large;"></span>
  <span xid="span9"><![CDATA[元]]></span>
  </div></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="bankcardData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item blue-border" style="margin:5px;background-color:white;padding:0px;" bind-click="li1Click">
  <div xid="div1" bind-css=" val(&quot;isselect&quot;) == 1 ? 'selectcolor' : ''"><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer1">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
    <div class="x-col" xid="col2">
     <i xid="i2" class="fa fa-credit-card-alt" style="color:#0080FF;"></i>
     <span xid="span2" bind-text='val("bankcode")' style="font-size:large;"></span></div> 
    <div class="x-col text-right" xid="col4" style="padding-top:0px;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" icon="fa fa-trash-o" style="color:#FF0000;padding-right:0px;" onClick="button2Click">
      <i xid="i3" class="fa fa-trash-o"></i>
      <span xid="span3"></span></a> </div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
    <div class="x-col" xid="col6">
     <label xid="label2" style="width:18px;"></label>
     <span xid="span4" bind-text='val("name")'></span></div> 
    <div class="x-col text-right" xid="col7">
     <span xid="span5" bind-text='val("cardnumber")'></span></div> </div> </div></div>
  </li></ul> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="margin-top:20px;">
   <div class="x-col" xid="col5"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="提现" xid="withdrawBtn" onClick="withdrawBtnClick">
   <i xid="i4"></i>
   <span xid="span6">提现</span></a></div></div>
  </div>
  </div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" type="YesNo" message="是否解除绑定" onYes="messageDialog1Yes"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="successmessageDialog" message="已提交银行受理" onOK="successmessageDialogOK"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="failmessageDialog" message="提现错误，请联系客户"></span></div>