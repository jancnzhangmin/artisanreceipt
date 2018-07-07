<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="withdrawrecordData" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="amount" type="String" xid="xid2"></column>
  <column name="bankname" type="String" xid="xid3"></column>
  <column name="cardnumber" type="String" xid="xid4"></column>
  <column name="bank" type="String" xid="xid5"></column>
  <column name="withdrawto" type="String" xid="xid6"></column>
  <column name="tradeno" type="String" xid="xid7"></column>
  <column name="summary" type="String" xid="xid8"></column>
  <column name="created_at" type="String" xid="xid9"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="提现记录"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left" style="color:#808080;"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">提现记录</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="withdrawrecordData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-fixed" xid="col2" style="width:80px;"><span xid="span1"><![CDATA[流水号]]></span></div>
   <div class="x-col" xid="col3"><span xid="span2" bind-text='val("tradeno")'></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-fixed" xid="col4" style="width:80px;">
    <span xid="span4"><![CDATA[提现时间]]></span></div> 
   <div class="x-col" xid="col5">
    <span xid="span3" bind-text='val("created_at")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col x-col-fixed" xid="col6" style="width:80px;">
    <span xid="span6"><![CDATA[提现金额]]></span></div> 
   <div class="x-col" xid="col7">
    <span xid="span5" bind-text='val("amount")'></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" bind-visible=' val("withdrawto") == 1'>
   <div class="x-col x-col-fixed" xid="col10" style="width:80px;">
    <span xid="span10"><![CDATA[提现方向]]></span></div> 
   <div class="x-col" xid="col11">
    <span xid="span9" bind-text=" val(&quot;withdrawto&quot;)  == 1 ? val(&quot;bank&quot;) + '(' +  val(&quot;cardnumber&quot;)  + ')' : '微信'"></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col x-col-fixed" xid="col12" style="width:80px;">
    <span xid="span12"><![CDATA[状态]]></span></div> 
   <div class="x-col" xid="col13">
    <span xid="span11" bind-text='val("summary")'></span></div> </div></li></ul> </div></div>
  </div> 
</div>