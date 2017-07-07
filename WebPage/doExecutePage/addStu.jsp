<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="query" class="database.dbfunction" scope="page"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addStu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
    	String stu_name = request.getParameter("stu_name");
    	String stu_class = request.getParameter("stu_class");
    	String stu_birth = request.getParameter("stu_birth");
    	query.connect();
    	String str = "insert into students(stu_name,stu_class,stu_birth)values"+
    	"('"+stu_name+"','"+stu_class+"','"+stu_birth+"')";
    	query.update(str);
    	out.print("添加成功");
    	out.print("<br><br><a href='admin.jsp'>返回继续查询</a> <a href='index.jsp'>返回首页</a>");
     %>
  </body>
</html>
