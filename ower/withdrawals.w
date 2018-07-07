<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad" onActive="modelActive"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="提现"
          class="x-titlebar" style="background-color:#FFFFFF;color:#555555;font-size:medium;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">提现</div>  
          <div class="x-titlebar-right reverse" style="padding-top:5px;"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="提现记录" xid="withdrawrecordBtn" style="color:#2671b9;font-size:small;" onClick="withdrawrecordBtnClick">
   <i xid="i4"></i>
   <span xid="span15">提现记录</span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1">

  <div component="$UI/system/components/justep/row/row" class="x-row alert alert-danger" xid="row9" style="margin-bottom:5px;">
   <div class="x-col" xid="col14"><span xid="span7"><![CDATA[微信提现功能预计2018年8月8日开通]]></span></div></div><div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer1" style="background-color:white;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
   <div class="x-col text-center" xid="col16">
    <span xid="span10"><![CDATA[总金额　]]></span>
    <span xid="span13" style="color:#ff651a;font-size:large;"></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col text-center" xid="col10">
    <span xid="span4"><![CDATA[可提现额度　]]></span>
  <span xid="span1" style="color:#ff651a;font-size:large;"></span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col3"><div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup5">
   <span class="input-group-addon" xid="span12"><![CDATA[提取金额]]></span>
   <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="candrawInput"></input></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col6"><a component="$UI/system/components/justep/button/button" class="btn x-green btn-block" label="提现至微信" xid="withdrawBtn" onClick="withdrawBtnClick" style="color:#FFFFFF;" disabled="true">
   <i xid="i1"></i>
   <span xid="span3">提现至微信</span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col text-center" xid="col9" style="color:#C0C0C0;"><span xid="span5"><![CDATA[您的提现将存入微信零钱 请确认是否是使用本人微信登录系统]]></span></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col" xid="col1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="提现至银行卡" xid="withdrawtobank" onClick="withdrawtobankClick" style="color:#FFFFFF;">
     <i xid="i3"></i>
     <span xid="span6">提现至银行卡</span></a> </div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
   <div class="x-col text-center" xid="col15" style="color:#C0C0C0;">
    <span xid="span8"><![CDATA[您的提现将存入银行卡，到账实效为1-3日，最快次日到账]]></span></div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" xid="col8"></div>
   <div class="x-col text-right" xid="col11"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="设置密码" xid="changeBtn" style="color:#3399f3;" onClick="changeBtnClick">
   <i xid="i2"></i>
   <span xid="span2">设置密码</span></a></div></div>
  </div></div>
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="popOver1" opacity="0.8" position="center">
   <div class="x-popOver-overlay" xid="div1"></div>
   <div class="x-popOver-content" xid="div2" style="width:100%;height:100%;padding-bottom:29px;padding-top:29px;"><div xid="div9" class="ftc_wzsf"><div xid="div10" class="srzfmm_box">
  <div xid="div11" class="qsrzfmm_bt clear_wl">
   
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col x-col-fixed" xid="col2" style="width:53px;"><img src="$UI/coffeefontV2/image/xx_03.jpg" alt="" xid="image3" style="width:50px;" bind-click="image3Click"></img></div>
   <div class="x-col" xid="col4"><span xid="span11" class="fl"><![CDATA[提现密码]]></span></div></div></div><div xid="div12" class="zfmmxx_shop"><div xid="div14" class="zhifu_price"><span xid="span9"><![CDATA[￥88.88]]></span></div></div>
  <ul xid="ul1" class="mm_box2"><li xid="li1"></li>
  <li xid="li2"></li>
  <li xid="li3"></li>
  <li xid="li4"></li>
  <li xid="li5"></li>
  <li xid="li6"></li></ul>
  <div xid="div18" class="qsrzfmm_bt clear_wl">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
    <div class="x-col x-col-fixed" xid="col7" style="width:53px;">
     </div> 
    <div class="x-col" xid="col5">
     <span xid="span14"><![CDATA[　]]></span></div> </div> </div></div>
  <div xid="div15" class="numb_box"><div xid="div16" class="xiaq_tb"><img src="$UI/coffeefontV2/image/jftc_14.jpg" alt="" xid="image1" height="10px"></img></div>
  <ul xid="ul2" class="nub_ggg"><li xid="li7"><a xid="num" class="zf_num" bind-click="numClick"><![CDATA[1]]></a></li>
  <li xid="li8">
   <a xid="a2" class="zj_x zf_num" bind-click="numClick(event)"><![CDATA[2]]></a></li>
  <li xid="li9">
   <a xid="a3" class="zf_num" bind-click="numClick(event)"><![CDATA[3]]></a></li>
  <li xid="li10">
   <a xid="a4" class="zf_num" bind-click="numClick(event)"><![CDATA[4]]></a></li>
  <li xid="li11">
   <a xid="a5" class="zj_x zf_num" bind-click="numClick(event)"><![CDATA[5]]></a></li>
  <li xid="li12">
   <a xid="a6" class="zf_num" bind-click="numClick(event)"><![CDATA[6]]></a></li>
  <li xid="li13">
   <a xid="a7" class="zf_num" bind-click="numClick(event)"><![CDATA[7]]></a></li>
  <li xid="li14">
   <a xid="a8" class="zj_x zf_num" bind-click="numClick(event)"><![CDATA[8]]></a></li>
  <li xid="li15">
   <a xid="a9" class="zf_num" bind-click="numClick(event)"><![CDATA[9]]></a></li>
  <li xid="li16">
   <a xid="numempty" class="zf_empty" bind-click="numemptyClick"><![CDATA[清空]]></a></li>
  <li xid="li17">
   <a xid="a11" class="zj_x zf_num" bind-click="numClick(event)"><![CDATA[0]]></a></li>
  <li xid="li18">
   <a xid="numdel" class="zf_del" bind-click="numdelClick"><![CDATA[删除]]></a></li></ul></div>
  </div></div></div>
  <resource xid="resource2"><require xid="require1" url="css!$UI/coffeefontV2/font-awesome-4.7.0/css/fa.icons"></require></resource>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" type="OK" message="您未设置提现密码，请设置提现密码" onOK="messageDialog1OK"></span></div>