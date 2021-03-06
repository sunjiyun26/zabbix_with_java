<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="f" uri="/isoft/core" %>
<f:html>
<f:head>
</f:head>
<f:iframebody>
<center>
<table>
<tr>
<td>
<f:iconBlock icon="/assets/icons/profile.ico" width="660px" iconStyle="width:56px;height:56px">
	<h1>个人信息设置</h1>
	<p><hr/></p>
	<p>用户名称&nbsp;:&nbsp;<f:inputText id="name" value="#{vo.name}" disabled="true" size="70" maxlength="20"/></p>
	<p>联系电话&nbsp;:&nbsp;<f:inputText id="mobile" value="#{vo.mobile}" size="70" maxlength="20"/></p>
	<p>电子邮件&nbsp;:&nbsp;<f:inputText id="email" value="#{vo.email}" size="70" maxlength="100"/></p>
	<p>最近登录&nbsp;:&nbsp;<f:inputText id="lastLoginAt" value="#{vo.lastLoginAt}" disabled="true" size="70"/></p>
	<p><hr/></p>
	<p>修改时间&nbsp;:&nbsp;<f:inputText id="modifiedAt" value="#{vo.modifiedAt}" disabled="true" size="70"/></p>
	<p>修&nbsp;&nbsp;改&nbsp;&nbsp;人&nbsp;:&nbsp;<f:inputText id="modifiedUser" value="#{vo.modifiedUser}" disabled="true" size="70"/></p>
	<p>创建时间&nbsp;:&nbsp;<f:inputText id="createdAt" value="#{vo.createdAt}" disabled="true" size="70"/></p>
	<p>创&nbsp;&nbsp;建&nbsp;&nbsp;人&nbsp;:&nbsp;<f:inputText id="createdUser" value="#{vo.createdUser}" disabled="true" size="70"/></p>
	<p><hr/></p>
	<p>
	    <f:inputButton value="保存信息设置" style="float:right" onclick="saveProf()"/>
	</p>
</f:iconBlock>
</td>
</tr>
</table>
</center>
<script type="text/javascript">
function saveProf(){
	  var mobile = $.trim($("#mobile").val());
	  var email = $.trim($("#email").val());
	  if(mobile==''){
          jAlert('联系电话不能为空!','信息提示',function(){
              $('#mobile').focus();
          });
          return;
      }
	  if(!isMobile(mobile)){
           jAlert("联系电话输入错误","错误提示",function(){
               $('#mobile').focus();
           });
           return;
      }
	  if(email==''){
	        jAlert('电子邮件不能为空!','信息提示',function(){
	            $('#email').focus();
	        });
	        return;
	  }
	  if(!isEmail(email)){
		  jAlert("电子邮件格式错误","错误提示",function(){
              $('#email').focus();
          });
		  return;
	  }		  
	  $.ajax({
	        url:"ProfOperEdit.action",
	        type:"post",
	        data:{
	          mobile:mobile,
	          email:email
	        },
	        dataType:"json",
	        success:function(json){     
	            jAlert("个人信息设置成功","个人信息设置成功");
	        }
	    });
	}

</script>
</f:iframebody>
</f:html>