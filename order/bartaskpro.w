<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:auto;width:142px;" onLoad="modelLoad" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="bartaskproData" idColumn="id"><column name="id" type="String" xid="xid1"></column>
  <column name="bartask_id" type="String" xid="xid2"></column>
  <column name="artisanuser_id" type="String" xid="xid3"></column>
  <column name="begintime" type="String" xid="xid4"></column>
  <column name="endtime" type="String" xid="xid5"></column>
  <column name="summary" type="String" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="bartaskproimageData" idColumn="id"><column name="id" type="String" xid="xid7"></column>
  <column name="bartaskproimage" type="String" xid="xid8"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="安装管理"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left" style="color:#808080;"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">安装管理</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1">
  <div xid="begindiv" style="display:none;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col3">
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="开始服务" xid="beginBtn" onClick="beginBtnClick">
   <i xid="i1"></i>
   <span xid="span1">开始服务</span></a></div></div></div>
  <div xid="begintimediv" style="display:none;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col8"><span xid="span4"><![CDATA[开始时间]]></span></div>
   <div class="x-col text-right" xid="col9"><span xid="span8" bind-text='$model.bartaskproData.val("begintime")'></span></div></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col5"><span xid="span2" style="color:#C0C0C0;"><![CDATA[为了减少或避免服务过程中用户与技工的纠纷，请您提供服前、服务中和服务完成的照片]]></span></div>
   <div class="x-col x-col-fixed" xid="col6" style="width:60px;"><span xid="span3" class="btn fileinput-button-front"><input type="file" value="" xid="imagefile" bind-change="imagefileChange"></input>
  </span></div></div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="bartaskproimageData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="col-xs-4 col-sm-3"><img src=" " alt="" xid="image1" bind-attr-src=' val("bartaskproimage")' style="width:100%;" bind-click="image1Click"></img></li></ul> 
  </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="height:30%;">
   <div class="x-col" xid="col4" style="height:100%;"><textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1" style="height:100%;" bind-ref='$model.bartaskproData.ref("summary")'></textarea></div></div><div xid="enddiv" style="display:none;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col12"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="服务完成" xid="endBtn" onClick="endBtnClick">
   <i xid="i3"></i>
   <span xid="span5">服务完成</span></a></div></div></div>
  <div xid="endtimediv" style="display:none;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col14"><span xid="span6"><![CDATA[完成时间]]></span></div>
   <div class="x-col text-right" xid="col15"><span xid="span7" bind-text='$model.bartaskproData.val("endtime")'></span></div></div></div>
  </div>
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver1">
   <div class="x-popOver-overlay" xid="div1"></div>
   <div class="x-popOver-content" xid="div2" style="width:100%;overflow-y: inherit;"><div component="$UI/system/components/justep/list/list" class="x-list swiper-container" xid="list2" data="bartaskproimageData">
   <ul class="x-list-template x-min-height swiper-wrapper" xid="listTemplateUl2">
    <li xid="li2" class="swiper-slide" style="height:auto;"><img src=" " alt="" xid="image2" bind-attr-src=' val("bartaskproimage")' style="width:100%;"></img></li></ul> 
  <div xid="div3" class="swiper-pagination"></div></div></div></div></div>