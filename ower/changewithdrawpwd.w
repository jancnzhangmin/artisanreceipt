<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onunLoad="modelUnLoad" onLoad="modelLoad"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="设置密码"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left" style="color:#808080;"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-weight:lighter;color:#808080;">设置密码</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer1" style="background-color:white;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col3">
    <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup5">
     <span class="input-group-addon" xid="span12"><![CDATA[验证码]]></span>
     <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="candrawInput"></input>
  </div> 
  </div> 
  <div class="x-col x-col-fixed" xid="col9" style="width:120px;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm pull-right" label="获取验证码" xid="validateBtn" style="color:#FFFFFF;margin-top:5px;" onClick="validateBtnClick">
   <i xid="i2"></i>
   <span xid="span2">获取验证码</span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col8"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="设置密码" xid="button1" style="color:#FFFFFF;" onClick="button1Click">
   <i xid="i1"></i>
   <span xid="span1">设置密码</span></a></div></div></div></div>
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver1" opacity="0.8" position="center">
   <div class="x-popOver-overlay" xid="div1"></div>
   <div class="x-popOver-content" xid="div2" style="width:100%;height:100%;padding-bottom:29px;padding-top:29px;">
    <div xid="div9" class="ftc_wzsf">
     <div xid="div10" class="srzfmm_box">
      <div xid="div11" class="qsrzfmm_bt clear_wl">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
        <div class="x-col x-col-fixed" xid="col2" style="width:53px;">
         <img src="$UI/coffeefontV2/image/xx_03.jpg" alt="" xid="image3" style="width:50px;" bind-click="image3Click"></img></div> 
        <div class="x-col" xid="col4">
         <span xid="span11" class="fl">提现密码</span></div> </div> </div> 
      <div xid="div12" class="zfmmxx_shop">
       <div xid="div14" class="zhifu_price">
        <span xid="span9"><![CDATA[请输入密码]]></span></div> </div> 
      <ul xid="ul1" class="mm_box">
       <li xid="li1"></li>
       <li xid="li2"></li>
       <li xid="li3"></li>
       <li xid="li4"></li>
       <li xid="li5"></li>
       <li xid="li6"></li></ul> 
      <div xid="div18" class="qsrzfmm_bt clear_wl">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
        <div class="x-col x-col-fixed" xid="col7" style="width:53px;"></div>
        <div class="x-col" xid="col5">
         <span xid="span14">　</span></div> </div> </div> </div> 
     <div xid="div15" class="numb_box">
      <div xid="div16" class="xiaq_tb">
       <img src="$UI/coffeefontV2/image/jftc_14.jpg" alt="" xid="image1" height="10px"></img></div> 
      <ul xid="ul2" class="nub_ggg">
       <li xid="li7">
        <a xid="num" class="zf_num" bind-click="numClick">1</a></li> 
       <li xid="li8">
        <a xid="a2" class="zj_x zf_num" bind-click="numClick(event)">2</a></li> 
       <li xid="li9">
        <a xid="a3" class="zf_num" bind-click="numClick(event)">3</a></li> 
       <li xid="li10">
        <a xid="a4" class="zf_num" bind-click="numClick(event)">4</a></li> 
       <li xid="li11">
        <a xid="a5" class="zj_x zf_num" bind-click="numClick(event)">5</a></li> 
       <li xid="li12">
        <a xid="a6" class="zf_num" bind-click="numClick(event)">6</a></li> 
       <li xid="li13">
        <a xid="a7" class="zf_num" bind-click="numClick(event)">7</a></li> 
       <li xid="li14">
        <a xid="a8" class="zj_x zf_num" bind-click="numClick(event)">8</a></li> 
       <li xid="li15">
        <a xid="a9" class="zf_num" bind-click="numClick(event)">9</a></li> 
       <li xid="li16">
        <a xid="numempty" class="zf_empty" bind-click="numemptyClick">清空</a></li> 
       <li xid="li17">
        <a xid="a11" class="zj_x zf_num" bind-click="numClick(event)">0</a></li> 
       <li xid="li18">
        <a xid="numdel" class="zf_del" bind-click="numdelClick">删除</a></li> </ul> </div> </div> </div> </div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" message="验证码错误"></span></div>