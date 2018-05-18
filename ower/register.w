<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:182px;left:11px;height:auto;" onunLoad="modelUnLoad"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="绑定手机"
          class="x-titlebar" style="background-color:white;">
          <div class="x-titlebar-left" style="color:#808080;"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="color:#808080;font-weight:lighter;">绑定手机</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content x-cards" xid="content1"><ul xid="ul2">
   <li class="list-group-item" xid="li1">
     
  
  <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup4">
     <span class="input-group-addon" xid="span4"><![CDATA[账号　]]></span>
     <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="phoneInput" placeHolder="手机号码"></input></div></li> 
   <li class="list-group-item" xid="li2">
   <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup1">
    <span class="input-group-addon" xid="span3"><![CDATA[姓名　]]></span>
    <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="nameInput"></input></div> </li><li class="list-group-item" xid="li1">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="padding:0px;">
   <div class="x-col" xid="col2" style="padding:0px;"><div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup3">
     <span class="input-group-addon" xid="span5"><![CDATA[验证码]]></span>
     
  <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="input1" placeHolder="短信验证码"></input></div></div>
   <div class="x-col x-col-fixed text-right" xid="col3" style="padding-top:5px;width:120px;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-sm" label="获取验证码" xid="validateBtn" onClick="validateBtnClick">
   <i xid="i1"></i>
   <span xid="span1">获取验证码</span></a></div></div></li> 
  </ul>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row24" style="background-color:white;">
   <div class="x-col text-center" xid="col6">
    <span xid="idfontSpan" class="btn fileinput-button-front">
     <input type="file" value="" xid="idfontInput" bind-change="idfontInputChange"></input></span> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row25" style="background-color:white;">
   <div class="x-col text-center" xid="col13">
    <span xid="idbackSpan" class="btn fileinput-button-back">
     <input type="file" value="" xid="idbackInput" bind-change="idbackInputChange"></input></span> 
  </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="margin-top:10px;">
   <div class="x-col text-center" xid="col5"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox1" label="我已阅读并同意" onChange="checkbox1Change"></span>
  <span xid="span6" class="text-info" bind-click="span6Click"><![CDATA[服务合作协议]]></span></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="margin-top:10px;">
   <div class="x-col" xid="col7"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="绑定" xid="bindbtn" onClick="bindbtnClick" disabled="true">
   <i xid="i2"></i>
   <span xid="span2">绑定</span></a></div></div>
  </div>
  </div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" message="无效的短信验证码"></span></div>