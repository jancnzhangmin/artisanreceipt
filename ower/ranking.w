<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="countryData" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="username" type="String" xid="xid2"></column>
  <column name="headurl" type="String" xid="xid3"></column>
  <column name="aver" type="String" xid="xid4"></column>
  <column name="city" type="String" xid="xid5"></column>
  <column name="sort" type="String" xid="xid6"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="服务排名"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left" style="color:#808080;"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-weight:lighter;color:#808080;">服务排名</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/tabs/tabs" class="x-tabs" xid="tabs2">
   <div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel2">
    <div class="x-panel-top" xid="top2">
     <ul class="nav nav-tabs nav-justified" xid="navs1">
      <li class="active" xid="li4">
       <a content="tabContent_1" xid="tabItem4"><![CDATA[区/县]]></a></li> 
  <li xid="li5">
   <a content="tabContent4" xid="tabItem5"><![CDATA[市]]></a></li>
  <li xid="li6">
   <a content="tabContent5" xid="tabItem6"><![CDATA[省]]></a></li>
  <li xid="li7">
   <a content="tabContent6" xid="tabItem7"><![CDATA[全国]]></a></li></ul> </div> 
    <div class="x-panel-content" xid="content2">
     <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents1">
      <div class="x-contents-content active" xid="content1"></div>
  <div class="x-contents-content" xid="content3"></div>
  <div class="x-contents-content" xid="content4"></div>
  <div class="x-contents-content" xid="content5"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="countryData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li8" class="list-group-item"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0px;">
   <div class="x-col" xid="col2"><span xid="span1" bind-text='val("sort")'></span>
  <img src=" " alt="" xid="image1" bind-attr-src=' val("headurl")' style="width:30px;margin-left:10px;"></img>
  <span xid="span2" bind-text='val("username")' style="margin-left:5px;"></span></div>
   <div class="x-col text-right" xid="col3"><span xid="span3" bind-text='val("city")'></span></div></div></li></ul> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col text-center" xid="col6"><span xid="span4"><![CDATA[我的排名：]]></span>
  <span xid="span5"></span></div></div></div></div> </div> </div> </div></div>
  </div> 
</div>