<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:53px;left:21px;height:auto;" onParamsReceive="modelParamsReceive" onActive="modelActive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="bartaskData" idColumn="id">
   <column name="id" type="String" xid="xid1"></column>
  <column name="preprice" type="String" xid="xid2"></column>
  <column name="province" type="String" xid="xid3"></column>
  <column name="city" type="String" xid="xid4"></column>
  <column name="district" type="String" xid="xid5"></column>
  <column name="address" type="String" xid="xid6"></column>
  <column name="status" type="String" xid="xid7"></column>
  <column name="installtime" type="String" xid="xid8"></column>
  <column name="ordernumber" type="String" xid="xid9"></column>
  <column name="created_at" type="String" xid="xid10"></column>
  <column name="updated_at" type="String" xid="xid11"></column>
  <column name="contact" type="String" xid="xid12"></column>
  <column name="contactphone" type="String" xid="xid13"></column>
  <column name="summary" type="String" xid="xid14"></column>
  <column name="paytype" type="String" xid="xid15"></column>
  <column name="registrant" type="String" xid="xid39"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="measureData" idColumn="id" confirmDelete="false">
   <column name="id" type="String" xid="column1"></column>
   <column name="isfloorheat" type="String" xid="column2"></column>
   <column name="isding" type="String" xid="column3"></column>
   <column name="openinout" type="String" xid="column4"></column>
   <column name="openleftright" type="String" xid="column5"></column>
   <column name="summary" type="String" xid="column6"></column>
   <column name="doorset" type="String" xid="column7"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="bartaskdetailData" idColumn="id" confirmDelete="false">
   <column name="id" type="String" xid="xid22"></column>
  <column name="product_id" type="String" xid="xid27"></column>
  <column name="producbase" type="String" xid="xid28"></column>
  <column name="productincrement" type="String" xid="xid29"></column>
  <column name="number" type="String" xid="xid30"></column>
  <column name="floor" type="String" xid="xid31"></column>
  <column name="summary" type="String" xid="xid32"></column>
  <column name="productbaseid" type="String" xid="xid37"></column>
  <column name="productincrementid" type="String" xid="xid42"></column>
  <column name="brand" type="String" xid="xid17"></column>
  <column name="product" type="String" xid="xid18"></column>
  <column name="lock" type="String" xid="xid19"></column>
  <column name="brand" type="String" xid="xid36"></column>
  <column name="projectdef" type="String" xid="xid38"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="transitData" idColumn="id" confirmDelete="false">
   <column name="id" type="String" xid="column12"></column>
   <column name="startprovince" type="String" xid="column13"></column>
   <column name="startcity" type="String" xid="column14"></column>
   <column name="startdistrict" type="String" xid="column15"></column>
   <column name="startaddress" type="String" xid="column8"></column>
   <column name="endprovince" type="String" xid="column9"></column>
   <column name="endcity" type="String" xid="column10"></column>
   <column name="enddistrict" type="String" xid="column11"></column>
   <column name="endaddress" type="String" xid="xid16"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="barbaseData" idColumn="id">
   <column name="id" type="String" xid="xid20"></column>
  <column name="bartaskdetail_id" type="String" xid="xid21"></column>
  <column name="name" type="String" xid="xid23"></column>
  <column name="summary" type="String" xid="xid24"></column>
  <column name="isselect" type="String" xid="xid34"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="barincrementData" idColumn="id">
   <column name="id" type="String" xid="column18"></column>
  <column name="bartaskdetail_id" type="String" xid="column19"></column>
  <column name="name" type="String" xid="column16"></column>
  <column name="summary" type="String" xid="column17"></column>
  <column name="isselect" type="String" xid="xid35"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="fingerData" idColumn="id" confirmDelete="false">
   <column name="id" type="String" xid="column20"></column>
   <column name="model" type="String" xid="xid43"></column>
   <column name="summary" type="String" xid="xid44"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="openlockData" idColumn="id" confirmDelete="false">
   <column name="id" type="String" xid="xid45"></column>
   <column name="summary" type="String" xid="xid46"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="offerData" idColumn="id"><column name="id" type="String" xid="xid25"></column>
  <column name="price" type="String" xid="xid26"></column>
  <column name="summary" type="String" xid="xid33"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="usercancelreasonData" idColumn="id">
   <column name="id" type="String" xid="column22"></column>
   <column name="reason" type="String" xid="column21"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="明细"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left" style="color:#808080;"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">明细</div>  
          <div class="x-titlebar-right reverse" style="padding-top:5px;"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="进入安装" xid="enterserviceBtn" style="color:#2671b9;font-size:small;display:none;" onClick="enterserviceBtnClick" disabled="true" bind-visible="false">
   <i xid="i4"></i>
   <span xid="span45">进入安装</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" icon="fa fa-navicon" onClick="button5Click" style="color:#808080;">
   <i xid="i6" class="fa fa-navicon"></i>
   <span xid="span51"></span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="background-color:white;">
   <div class="x-col" xid="col2"><span xid="span1"><![CDATA[单号]]></span></div>
   <div class="x-col text-right" xid="col3"><span xid="span2" bind-text='$model.bartaskData.val("ordernumber")' class="text-info"></span></div></div>
  <div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer1" style="background-color:white;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col6"><span xid="span3"><![CDATA[服务地址]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col9"><span xid="span4" bind-text=' $model.bartaskData.val("province") + $model.bartaskData.val("city") + $model.bartaskData.val("district") + $model.bartaskData.val("address")'></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col11"><span xid="span5"><![CDATA[预约服务时间]]></span></div>
   <div class="x-col text-right" xid="col12"><span xid="span6" bind-text='$model.bartaskData.val("installtime")'></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col14"><span xid="span7"><![CDATA[代收款(元)]]></span></div>
   <div class="x-col text-right" xid="col15"><span xid="span8" bind-text="'￥' + $model.bartaskData.val(&quot;preprice&quot;)" style="color:#ff651a;"></span></div></div>
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" bind-visible=' $model.bartaskData.val("status") &gt; 1'>
   <div class="x-col" xid="col20"><span xid="span11"><![CDATA[现场联系人]]></span></div>
   <div class="x-col text-right" xid="col21"><span xid="span12" bind-text='$model.bartaskData.val("contactphone")'></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" bind-visible=' $model.bartaskData.val("status") &gt; 1'>
   <div class="x-col" xid="col17"><span xid="span9"><![CDATA[发单人]]></span></div>
   <div class="x-col text-right" xid="col18"><span xid="span10" bind-text='$model.bartaskData.val("registrant")'></span></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col" xid="col23"><span xid="span13"><![CDATA[额外费用支付]]></span></div>
   <div class="x-col text-right" xid="col24"><span xid="span14" bind-text='$model.bartaskData.val("paytype")'></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
   <div class="x-col" xid="col26"><span xid="span15"><![CDATA[描述]]></span></div>
   <div class="x-col" xid="col27"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
   <div class="x-col" xid="col30"><span xid="span16" bind-text='$model.bartaskData.val("summary")'></span></div></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" bind-visible="$model.measureData.count() &gt; 0">
   <div class="x-col text-center" xid="col33"><span xid="span17"><![CDATA[测量门洞]]></span>
  </div></div><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer2" style="margin-top:10px;background-color:white;" bind-visible=" $model.measureData.count() &gt; 0"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="measureData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17">
   <div class="x-col" xid="col5"><span xid="span24"><![CDATA[描述]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18">
   <div class="x-col" xid="col10"><span xid="span18" bind-text='val("summary")'></span></div></div></li></ul> </div>
  </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row12" bind-visible=" $model.transitData.count() &gt; 0">
   <div class="x-col text-center" xid="col36"><span xid="span19"><![CDATA[运输服务]]></span></div></div><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer3" style="background-color:white;" bind-visible="$model.transitData.count() &gt; 0"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="transitData">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row13">
   <div class="x-col" xid="col39"><span xid="span20"><![CDATA[起点]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row14">
   <div class="x-col" xid="col42"><span xid="span21" bind-text=' val("startprovince") + val("startcity") + val("startdistrict") + val("startaddress")'></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row15">
   <div class="x-col" xid="col45"><span xid="span22"><![CDATA[终点]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row16">
   <div class="x-col" xid="col48"><span xid="span23" bind-text=' val("endprovince") + val("endcity") + val("enddistrict") + val("endaddress")'></span></div></div></li></ul> </div>
  </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row19" bind-visible=" $model.bartaskdetailData.count() &gt; 0">
   <div class="x-col text-center" xid="col19"><span xid="span25"><![CDATA[安装服务]]>
  </span></div></div><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer4" bind-visible=" $model.bartaskdetailData.count() &gt; 0"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="bartaskdetailData">
   <ul class="x-list-template" xid="listTemplateUl4">
    <li xid="li4" class="list-group-item" style="padding:0px;padding-bottom:10px;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row21">
      <div class="x-col" xid="col53">
       <span xid="span29">品牌</span></div> 
      <div class="x-col text-right" xid="col54">
       <span xid="span30" bind-text='val("brand")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row38">
   <div class="x-col" xid="col41">
    <span xid="span54"><![CDATA[项目]]></span></div> 
   <div class="x-col text-right" xid="col43">
    <span xid="span58" bind-text='val("projectdef")'></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row22">
      <div class="x-col" xid="col56">
       <span xid="span32">型号</span></div> 
      <div class="x-col text-right" xid="col55">
       <span xid="span31" bind-text='val("product")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row23">
      <div class="x-col" xid="col57">
       <span xid="span33">锁具</span></div> 
      <div class="x-col text-right" xid="col58">
       <span xid="span34" bind-text='val("lock")'></span></div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row24">
      <div class="x-col" xid="col61">
       <span xid="span35">基础服务</span></div> </div> 
     <div component="$UI/system/components/justep/list/list" class="x-list" xid="list5" data="barbaseData">
      <ul class="x-list-template" xid="listTemplateUl5" style="padding-left:10px;padding-right:10px;">
        
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row33">
   <div class="x-col" xid="col8"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="button" xid="button1" bind-text=' val("name")' bind-css=" val(&quot;isselect&quot;) == 0 ? 'x-gray' : ''">
        <i xid="i2"></i>
        <span xid="span36"></span></a>
  <span xid="span46" bind-text='val("summary")'></span></div>
   </div></ul> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row26">
      <div class="x-col" xid="col65">
       <span xid="span37">增值服务</span></div> </div> 
     <div component="$UI/system/components/justep/list/list" class="x-list" xid="list6" data="barincrementData">
      <ul class="x-list-template" xid="listTemplateUl6" style="padding-left:10px;padding-right:10px;">
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row34">
   <div class="x-col" xid="col37"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="button" xid="button2" bind-text='val("name")' bind-css="val(&quot;isselect&quot;) == 0 ? 'x-gray' : ''">
        <i xid="i3"></i>
        <span xid="span38"></span></a>
  <span xid="span47" bind-text='val("summary")'></span></div></div></ul> 
  </div> 
  </li> </ul> 
  </div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row20" bind-visible=" $model.fingerData.count()  &gt; 0">
   <div class="x-col text-center" xid="col28"><span xid="span26"><![CDATA[维修 开锁服务]]></span>
  </div></div><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer5" bind-visible="$model.fingerData.count() &gt; 0"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list8" data="fingerData">
   <ul class="x-list-template" xid="listTemplateUl8">
    <li xid="li5" class="list-group-item" style="padding:0px;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row36">
   <div class="x-col" xid="col1">
    <span xid="span49"><![CDATA[服务项目]]></span></div> 
   <div class="x-col text-right" xid="col22"><span xid="span50" bind-text='val("model")'></span></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row29">
      <div class="x-col" xid="col7">
       <span xid="span41">描述</span></div> 
      <div class="x-col" xid="col4"></div></div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row30">
      <div class="x-col" xid="col29">
       <span xid="span42" bind-text='val("summary")'></span></div> </div> 
  </li> </ul> </div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row25">
   <div class="x-col" xid="col13"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="我要报价" xid="offerBtn" onClick="offerBtnClick" bind-visible=" $model.offerData.count() == 0">
   <i xid="i1"></i>
   <span xid="span27">我要报价</span></a></div></div><div xid="div1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row27">
   <div class="x-col text-center" xid="col16"><span xid="span28"><![CDATA[我的报价]]></span>
  </div></div>
  <div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer6" style="background-color:white;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row28">
   <div class="x-col" xid="col25"><span xid="span39"><![CDATA[我的报价]]></span></div>
   <div class="x-col text-right" xid="col31"><span xid="span40" bind-text='$model.offerData.val("price")'><![CDATA[]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row31">
   <div class="x-col" xid="col35"><span xid="span43"><![CDATA[描述]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row32">
   <div class="x-col" xid="col40"><span xid="span44" bind-text='$model.offerData.val("summary")'></span>
  </div></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row35" bind-visible='$model.bartaskData.val("status") == 2 || $model.bartaskData.val("status") == 3 ||  $model.bartaskData.val("status") == 4'>
   <div class="x-col" xid="col32"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="进入安装" xid="button3" onClick="button3Click">
   <i xid="i5"></i>
   <span xid="span48">进入安装</span></a></div></div></div>
  </div> 
<resource xid="resource2"><require xid="require1" url="css!$UI/artisanreceipt/font-awesome-4.7.0/css/fa.icons"></require></resource>
  <div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu" direction="right-bottom" xid="popMenu3" anchor="button5">
   <div class="x-popMenu-overlay" xid="div9"></div>
   <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content" xid="menu3">
    
    <li class="x-menu-item" xid="item3">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="　取消定单" xid="cancelBtn" icon="fa fa-remove" onClick="cancelBtnClick" bind-visible=' $model.bartaskData.val("status") == 3 || $model.bartaskData.val("status") == 4'>
      <i xid="i7" class="fa fa-remove"></i>
      <span xid="span53">　取消定单</span></a> </li> 
    
    <li class="x-menu-item" xid="item5">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="　投诉建议" xid="button9" icon="fa fa-user-o">
      <i xid="i9" class="fa fa-user-o"></i>
      <span xid="span55">　投诉建议</span></a> </li> </ul> </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="usercancelreasonPop">
   <div class="x-popOver-overlay" xid="div3"></div>
   <div class="x-popOver-content" xid="div4" style="width:70%">
    <div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer7" style="background-color:white;">
     <div component="$UI/system/components/justep/row/row" class="x-row tb-box" xid="row37">
      <div class="x-col" xid="col38">
       <a component="$UI/system/components/justep/button/button" class="btn btn-sm btn-only-icon tb-backBtn" label="button" xid="button4" icon="fa fa-times" onClick="button4Click">
        <i xid="i8" class="fa fa-times"></i>
        <span xid="span57"></span></a> </div> </div> 
     <div component="$UI/system/components/justep/list/list" class="x-list" xid="list11" data="usercancelreasonData">
      <ul class="x-list-template" xid="listTemplateUl11" style="margin-bottom:-1px;">
       <li xid="li10" class="list-group-item">
        <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="radio1" name="usercancelreason" onChange="radio1Change"></span>
        <span xid="span52" bind-text='val("reason")'></span></li> </ul> </div> 
     <ul xid="ul1">
      <li xid="li9" class="list-group-item">
       <span component="$UI/system/components/justep/button/radio" class="x-radio" xid="otherreasonradio" name="usercancelreason" label="其它"></span>
       <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" bind-keyup="textarea1Keyup" valueUpdateMode="keyup"></textarea></li> </ul> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row37">
      <div class="x-col" xid="col34">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="提交" xid="seasonsubmitBtn" onClick="seasonsubmitBtnClick">
        <i xid="i10"></i>
        <span xid="span56">提交</span></a> </div> </div> </div> </div> </div></div>