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
<title>排班信息</title>

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
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
<%
	String id=request.getParameter("id");
	
     %>
<body>
<jsp:include page="qttop.jsp"></jsp:include>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">排班信息</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con"> 
					
					
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%'>坐诊日期：</td><td width='39%'>${paibanxinxi.zuozhenriqi}</td>     <td width='11%'>坐诊科室：</td><td width='39%'>${paibanxinxi.zuozhenkeshi}</td></tr><tr>     <td width='11%'>可预约人数：</td><td width='39%'>${paibanxinxi.keyuyuerenshu}</td>     <td width='11%'>剩余预约人数：</td><td width='39%'>${paibanxinxi.shengyuyuyuerenshu}</td></tr><tr>     <td width='11%'>账号：</td><td width='39%'>${paibanxinxi.zhanghao}</td>     <td width='11%'>医生姓名：</td><td width='39%'>${paibanxinxi.yishengxingming}</td></tr><tr>     <td width='11%'>职称：</td><td width='39%'>${paibanxinxi.zhicheng}</td>     <td width='11%'>医龄：</td><td width='39%'>${paibanxinxi.yiling}</td></tr><tr>     <td width='11%'>科室：</td><td width='39%'>${paibanxinxi.keshi}</td>     <td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" /><input type=button name=Submit52 value=打印 onClick="javascript:window.print()"  /> <input type="button" name="paibanxinxiyuyueguahao" value="预约挂号" onclick="javascript:location.href='yuyueguahaoadd.jsp?id=${paibanxinxi.id}';"> <!--jixaaxnnxiu--></td></tr>
    
  </table>
					
			</div>	
		</div>
	</div>		
</div>
<jsp:include page="qtdown.jsp"></jsp:include>


</body>
</html>

