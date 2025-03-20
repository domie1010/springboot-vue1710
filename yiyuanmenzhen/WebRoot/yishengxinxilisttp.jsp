﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html class="no-js">
<head>
<meta />
<title>医生信息</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="qtimages/css/reset.css" rel="stylesheet" />
<link href="qtimages/css/main.css" rel="stylesheet"/>
<link href="qtimages/css/sub.css" rel="stylesheet"/>
<script src="qtimages/jquery.js"></script> 
<script src="js/jquery.SuperSlide.2.1.1.js"></script>

<script type="text/javascript" src="qtimages/inc.js"></script>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
</head>

<%

%>

<body>
<jsp:include page="qttop.jsp"></jsp:include>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">医生信息</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con"> 
					
					
<form action="ysxxListtp.do" name="myform" method="post" style="width:100%">
									查询   账号：<input name="zhanghao" type="text" id="zhanghao" style='border:solid 1px #000000; color:#666666' size="12" />  医生姓名：<input name="yishengxingming" type="text" id="yishengxingming" style='border:solid 1px #000000; color:#666666' size="12" /> 性别：<select name='xingbie' id='xingbie' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="男">男</option><option value="女">女</option></select>  手机：<input name="shouji" type="text" id="shouji" style='border:solid 1px #000000; color:#666666' size="12" />  职称：<input name="zhicheng" type="text" id="zhicheng" style='border:solid 1px #000000; color:#666666' size="12" /> 科室：<select name='keshi' id='keshi' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><%=connDbBean.hsggetoption("keshixinxi","keshi")%></select>
									<input type="submit" value="查询" /> <input type="button" name="Submit2" value="切换视图"  onClick="javascript:location.href='ysxxList.do';" />
								</form>	
<br />

<table width="100%" height="12%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                          <%
					int i=0;
				%>
				<c:forEach items="${list}" var="u">
				<%
					i++;
				%>
                            <td align="center"><table width="150" height="153" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td height="126" align="center"><a href="ysxxDetail.do?id=${u.id}"><img src="${u.zhaopian}" width="109" height="126" border="0" /></a></td>
                                </tr>
                                <tr>
                                  <td height="26" align="center">${u.yishengxingming}</td>
                                </tr>
                            </table></td>
							  <%
								if (i==4)
								{
									i=0;
									out.print("</tr><tr>");
								}
				  	
					
				  %>
							</c:forEach>
							
                          
                          </tr>
                        </table><br>

<p align="center"> <c:if test="${sessionScope.p==1}">
		 <c:if test="${page.page>1}">
              <a href="ysxxListtp.do?page=1" >首页</a>
             <a href="ysxxListtp.do?page=${page.page-1}"> 上一页</a>             </c:if>
    	     <c:if test="${page.page<page.totalPage}">
			<a href="ysxxListtp.do?page=${page.page+1}">下一页</a>
			<a href="ysxxListtp.do?page=${page.totalPage}">末页</a>		    </c:if>		
	</c:if>
	</p>
					
			</div>	
		</div>
	</div>		
</div>
<jsp:include page="qtdown.jsp"></jsp:include>


</body>
</html>

