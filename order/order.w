<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="receiptbartaskData" idColumn="id">
   <column name="id" type="String" xid="xid61"></column>
  <column name="preprice" type="String" xid="xid62"></column>
  <column name="prvoince" type="String" xid="xid63"></column>
  <column name="city" type="String" xid="xid64"></column>
  <column name="district" type="String" xid="xid65"></column>
  <column name="address" type="String" xid="xid66"></column>
  <column name="status" type="String" xid="xid67"></column>
  <column name="installtime" type="String" xid="xid68"></column>
  <column name="ordernumber" type="String" xid="xid69"></column>
  <column name="contact" type="String" xid="xid70"></column>
  <column name="contactphone" type="String" xid="xid71"></column>
  <column name="measurecount" type="String" xid="xid72"></column>
  <column name="transitcount" type="String" xid="xid73"></column>
  <column name="fingercount" type="String" xid="xid74"></column>
  <column name="bartaskdetailcount" type="String" xid="xid75"></column>
  <column name="openlockcount" type="String" xid="xid76"></column>
  <column name="artisancount" type="String" xid="xid1"></column>
  <column name="isselect" type="String" xid="xid2"></column>
  <column name="hasoffer" type="String" xid="xid3"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list8" data="receiptbartaskData">
   <ul class="x-list-template" xid="listTemplateUl8">
    <li xid="li8" class="list-group-item" bind-click="li8Click">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row48">
      <div class="x-col" xid="col53">
       <span xid="span44">订单编号</span></div> 
      <div class="x-col text-right" xid="col56">
       <span xid="span45" bind-text='val("ordernumber")' class="text-info"></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row51">
      <div class="x-col" xid="col66">
       <span xid="span49"><![CDATA[任务数量]]></span></div> 
      <div class="x-col text-right" xid="col67">
       <span xid="span50" bind-text=' val("measurecount") + val("transitcount") + val("fingercount") + val("bartaskdetailcount") + val("openlockcount")'>0</span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row49">
      <div class="x-col" xid="col58">
       <span xid="span46"><![CDATA[任务地址]]></span></div> 
      <div class="x-col text-right" xid="col59">
       </div> </div> 
      
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col3" bind-text=' val("prvoince") + val("city") + val("district") + val("address")'></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col5"><span xid="span1"><![CDATA[参与技工]]></span></div>
   <div class="x-col text-right" xid="col6"><![CDATA[]]>
  <span xid="span3" bind-text='val("artisancount")'><![CDATA[0]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col8"><span xid="span4"><![CDATA[状态]]></span></div>
   <div class="x-col text-right" xid="col9"><span xid="span5" bind-text=' val("hasoffer") == 1 ? "已报价" : "未参与"'></span></div></div></li> </ul> </div></div>
  </div> 
</div>