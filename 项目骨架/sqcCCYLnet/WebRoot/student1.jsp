<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="zkj.tyxx.dao.StudentDao,zkj.tyxx.entity.Student" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'student1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
<!-- stu_name,stu_email,stu_tel,stu_pass,stu_num -->
  <body style="background:url(imags/back2.jpg);background-size:cover;">
   <br><br>
  	<font size=8,color=Black><a style="display:block;text-align:center">更新团员信息</a></font><br><br>
  	<%
  	   Student stu=(Student)request.getAttribute("stu");
  	 %>
  	<form action="updateStudent.do" method="post">
  	<div align="center">
  	<input type="hidden" name="id" value="<%=stu.getId() %>"/>
  	   姓&nbsp;&nbsp;名：
  	   <input type="text" name="name" value='<%=stu.getName()%>'/><br><br>
  	   性&nbsp;&nbsp;别：
  	 <input type="text" name="sex" value='<%=stu.getSex()%>'/><br><br>
  	   学&nbsp;&nbsp;号：
  	 <input type="text" name="num" value='<%=stu.getNum()%>'/><br><br>
  	   院&nbsp;&nbsp;系：<input type="text" name="dep" value='<%=stu.getDep()%>'/><br><br>
  	   入团时间：<input type="text" name="jtime" value='<%=stu.getJtime()%>'/><br><br>
  	   籍&nbsp;&nbsp;贯：<input type="text" name="place" value='<%=stu.getPlace()%>'/><br><br>
  	   出生日期：<input type="text" name="bir" value='<%=stu.getBir()%>'/><br><br>
  	   电&nbsp;&nbsp;话：<input type="text" name="tel" value='<%=stu.getTel()%>'/><br><br>
  	 <input type="submit" value="添加">&nbsp;&nbsp;&nbsp;
  	 <input type="reset" value="重置"/>
  	 </div>
  	</form>
  </body>
</html>
