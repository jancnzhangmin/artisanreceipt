<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:8px;left:16px;height:auto;" onLoad="modelLoad"> 
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
  <column name="hasoffer" type="String" xid="xid3"></column>
  <column name="offerstatus" type="String" xid="xid4"></column>
  <column name="servicetype" type="String" xid="xid8"></column>
  <column name="paytype" type="String" xid="xid10"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="areareceiptbartaskData" idColumn="id">
   <column name="id" type="String" xid="column1"></column>
  <column name="preprice" type="String" xid="column2"></column>
  <column name="prvoince" type="String" xid="column8"></column>
  <column name="city" type="String" xid="column9"></column>
  <column name="district" type="String" xid="column10"></column>
  <column name="address" type="String" xid="column11"></column>
  <column name="status" type="String" xid="column5"></column>
  <column name="installtime" type="String" xid="column6"></column>
  <column name="ordernumber" type="String" xid="column7"></column>
  <column name="contact" type="String" xid="column12"></column>
  <column name="contactphone" type="String" xid="column13"></column>
  <column name="measurecount" type="String" xid="column14"></column>
  <column name="transitcount" type="String" xid="column15"></column>
  <column name="fingercount" type="String" xid="column18"></column>
  <column name="bartaskdetailcount" type="String" xid="column19"></column>
  <column name="openlockcount" type="String" xid="column20"></column>
  <column name="artisancount" type="String" xid="column3"></column>
  <column name="isselect" type="String" xid="column4"></column>
  <column name="hasoffer" type="String" xid="column16"></column>
  <column name="offerstatus" type="String" xid="column17"></column>
  <column name="servicetype" type="String" xid="xid9"></column>
  <column name="paytype" type="String" xid="xid11"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cityData" idColumn="city"><column name="city" type="String" xid="xid5"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="districtData" idColumn="district"><column name="district" type="String" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="provinceData" idColumn="province"><column name="province" type="String" xid="xid7"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified x-liushushu-top" tabbed="true" xid="buttonGroup1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="新订单" xid="button1" target="content2">
    <i xid="i1"></i>
    <span xid="span8">新订单</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="已报价" xid="button2" target="content3">
    <i xid="i2"></i>
    <span xid="span9">已报价</span></a> 
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="服务中" xid="button3" target="content4">
   <i xid="i3"></i>
   <span xid="span10">服务中</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="已完成" xid="button4" target="content5">
   <i xid="i4"></i>
   <span xid="span11">已完成</span></a></div></div><div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row22">
   <div class="x-col" xid="col39"><select component="$UI/system/components/justep/distpicker/provinceSelect" class="form-control" xid="provinceSelect1" onChange="provinceSelect1Change"></select></div>
   <div class="x-col" xid="col40"><select component="$UI/system/components/justep/distpicker/citySelect" class="form-control" xid="citySelect1" onChange="citySelect1Change" bind-provinceRef='$model.provinceData.val("province")'></select></div>
   <div class="x-col" xid="col41"><select component="$UI/system/components/justep/distpicker/districtSelect" class="form-control" xid="districtSelect1" onChange="districtSelect1Change" bind-cityRef='$model.cityData.val("city")'></select></div></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list8" data="areareceiptbartaskData" filter='$row.val("status") == 1 &amp;&amp;  $row.val("offerstatus") != 1'>
   <ul class="x-list-template" xid="listTemplateUl8">
    <li xid="li8" class="list-group-item" bind-click="li8Click">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row48">
      <div class="x-col x-col-fixed" xid="col53" style="width:80px;">
       <span xid="span44"><![CDATA[预约时间]]></span></div> 
      <div class="x-col" xid="col56">
       <span xid="span45" bind-text='val("installtime")' class="text-info"></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row51">
      <div class="x-col x-col-fixed" xid="col66" style="width:80px;">
       <span xid="span49"><![CDATA[服务类型]]></span></div> 
      <div class="x-col" xid="col67">
       <span xid="span50" bind-text='val("servicetype")'>0</span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row49">
      <div class="x-col x-col-fixed" xid="col58" style="width:80px;">
       <span xid="span46"><![CDATA[任务地址]]></span></div> 
      <div class="x-col" xid="col59">
       <span xid="span56" bind-text=' val("prvoince") + val("city") + val("district")'></span></div> </div> 
      
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-fixed" xid="col5" style="width:80px;"><span xid="span1"><![CDATA[额外费用]]></span></div>
   <div class="x-col" xid="col6"><![CDATA[]]>
  <span xid="span3" bind-text='val("paytype")'><![CDATA[0]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col x-col-fixed" xid="col8" style="width:80px;"><span xid="span4"><![CDATA[状态]]></span></div>
   <div class="x-col" xid="col9"><span xid="span2" bind-visible=' val("offerstatus") == 0'><![CDATA[未参与]]></span>
  <span xid="span5" bind-visible=' val("offerstatus") == 1'><![CDATA[已报价]]></span>
  <span xid="span6" bind-visible=' val("offerstatus") == 2'><![CDATA[用户未选中]]></span>
  <span xid="span7" bind-visible=' val("offerstatus") == 3'><![CDATA[用户已支付]]></span></div></div></li> </ul> 
  </div>
  </div>
  <div class="x-contents-content" xid="content3"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="receiptbartaskData" filter='$row.val("status") == 1 &amp;&amp;  $row.val("hasoffer") == 1'>
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item" bind-click="li8Click">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
      <div class="x-col x-col-fixed" xid="col16" style="width:80px;">
       <span xid="span15"><![CDATA[预约时间]]></span></div> 
      <div class="x-col" xid="col4">
       <span xid="span14" bind-text='val("installtime")' class="text-info"></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
      <div class="x-col x-col-fixed" xid="col15" style="width:80px;">
       <span xid="span13"><![CDATA[服务类型]]></span></div> 
      <div class="x-col" xid="col14">
       <span xid="span23" bind-text='val("servicetype")'>0</span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
      <div class="x-col x-col-fixed" xid="col2" style="width:80px;">
       <span xid="span12">任务地址</span></div> 
      <div class="x-col" xid="col1"><span xid="span57" bind-text=' val("prvoince") + val("city") + val("district")'>0</span></div></div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
      <div class="x-col x-col-fixed" xid="col12" style="width:80px;">
       <span xid="span22"><![CDATA[额外费用]]></span></div> 
      <div class="x-col" xid="col11">
       <span xid="span17" bind-text='val("paytype")'>0</span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
      <div class="x-col x-col-fixed" xid="col7" style="width:80px;">
       <span xid="span18">状态</span></div> 
      <div class="x-col" xid="col10">
       <span xid="span16" bind-visible=' val("offerstatus") == 0'>未参与</span>
       <span xid="span19" bind-visible=' val("offerstatus") == 1'>已报价</span>
       <span xid="span20" bind-visible=' val("offerstatus") == 2'>用户未选中</span>
       <span xid="span21" bind-visible=' val("offerstatus") == 3'>用户已支付</span></div> 
  <div class="x-col" xid="col3"><span xid="span58"></span></div></div> </li> </ul> </div></div>
  <div class="x-contents-content" xid="content4"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="receiptbartaskData" filter='$row.val("offerstatus") == 3 &amp;&amp; $row.val("hasoffer") == 1 &amp;&amp; $row.val("status") != 5'>
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2" class="list-group-item" bind-click="li8Click">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
      <div class="x-col x-col-fixed" xid="col17" style="width:80px;">
       <span xid="span34"><![CDATA[预约时间]]></span></div> 
      <div class="x-col" xid="col24">
       <span xid="span31" bind-text='val("installtime")' class="text-info"></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row15">
      <div class="x-col x-col-fixed" xid="col18" style="width:80px;">
       <span xid="span32"><![CDATA[服务类型]]></span></div> 
      <div class="x-col" xid="col19">
       <span xid="span26" bind-text='val("servicetype")'>0</span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
      <div class="x-col x-col-fixed" xid="col25" style="width:80px;">
       <span xid="span35">任务地址</span></div> 
      <div class="x-col" xid="col26"><span xid="span59" bind-text=' val("prvoince")  +  val("city")  + val("district")'></span></div></div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
      <div class="x-col x-col-fixed" xid="col21" style="width:80px;">
       <span xid="span27"><![CDATA[额外费用]]></span></div> 
      <div class="x-col" xid="col22">
       <span xid="span29" bind-text='val("paytype")'>0</span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13">
      <div class="x-col x-col-fixed" xid="col23" style="width:80px;">
       <span xid="span28">状态</span></div> 
      <div class="x-col" xid="col27">
       <span xid="span33" bind-visible=' val("offerstatus") == 0'>未参与</span>
       <span xid="span30" bind-visible=' val("offerstatus") == 1'>已报价</span>
       <span xid="span25" bind-visible=' val("offerstatus") == 2'>用户未选中</span>
       <span xid="span24" bind-visible=' val("offerstatus") == 0'>用户已支付</span>
  <span xid="span54" bind-visible='val("status") == 2 || val("status") == 3'><![CDATA[正在服务]]></span>
  <span xid="span55" bind-visible=' val("status") == 4'><![CDATA[申请验收]]></span></div> </div> </li> </ul> </div></div>
  <div class="x-contents-content" xid="content5"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="receiptbartaskData" filter='$row.val("offerstatus") == 3 &amp;&amp; $row.val("hasoffer") == 1 &amp;&amp; $row.val("status") == 5'>
   <ul class="x-list-template" xid="listTemplateUl3">
    <li xid="li3" class="list-group-item" bind-click="li8Click">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row16">
      <div class="x-col x-col-fixed" xid="col29" style="width:80px;">
       <span xid="span51"><![CDATA[预约时间]]></span></div> 
      <div class="x-col" xid="col36">
       <span xid="span48" bind-text='val("installtime")' class="text-info"></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row19">
      <div class="x-col x-col-fixed" xid="col28" style="width:80px;">
       <span xid="span47"><![CDATA[服务类型]]></span></div> 
      <div class="x-col" xid="col30">
       <span xid="span41" bind-text='val("servicetype")'>0</span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18">
      <div class="x-col x-col-fixed" xid="col35" style="width:80px;">
       <span xid="span43">任务地址</span></div> 
      <div class="x-col" xid="col34"><span xid="span60" bind-text=' val("prvoince") + val("city") + val("district")'></span></div></div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17">
      <div class="x-col x-col-fixed" xid="col31" style="width:80px;">
       <span xid="span40"><![CDATA[额外费用]]></span></div> 
      <div class="x-col" xid="col38">
       <span xid="span36" bind-text='val("paytype")'>0</span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row20">
      <div class="x-col x-col-fixed" xid="col37" style="width:80px;">
       <span xid="span37">状态</span></div> 
      <div class="x-col" xid="col33">
       <span xid="span52" bind-visible=' val("offerstatus") == 0'>未参与</span>
       <span xid="span42" bind-visible=' val("offerstatus") == 1'>已报价</span>
       <span xid="span38" bind-visible=' val("offerstatus") == 2'>用户未选中</span>
       <span xid="span39" bind-visible=' val("offerstatus") == 0'>用户已支付</span>
  <span xid="span53" bind-visible=' val("status") == 5'><![CDATA[已验收]]></span></div> </div> </li> </ul> </div></div></div></div>
  </div> 
</div>