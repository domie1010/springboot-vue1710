<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="keshixinxihsgb" scope="page" class="com.bean.KeshixinxiBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=keshixinxi.xls");
%>
<html>
  <head>
    <title>科室信息</title>
  </head>

  <body >
 <%
			String sql="select * from keshixinxi  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td align='center'>科室</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">添加时间</td>
    
  </tr>
   <%		
				List pagelist3=keshixinxihsgb.getAllKeshixinxi(3);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.keshi}</td>    
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

