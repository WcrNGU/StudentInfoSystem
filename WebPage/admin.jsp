<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin.jsp' starting page</title>
    
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
    <center>
      <form action="adminQuery.jsp" method="post">
          <h2>请选择操作</h2>
          	  <select name="student" >
                <option value="1" >  添加 学生信息</option>
                <option value="2" >  修改 学生信息</option>
                <option value="3" >  删除  学生信息</option>
                <option value="4" >  添加 教师信息</option>
                <option value="5" >  修改 教师信息</option>
                <option value="6" >  删除 教师信息</option>
                <option value="7" >  添加 课程信息</option>
                <option value="8" >  修改 课程信息</option>
                <option value="9" >  删除 课程信息</option>
                <option value="10" > 添加 学生成绩</option>
                <option value="11" > 修改 学生成绩</option>
                <option value="12" > 删除 学生成绩</option>
              </select>
      <br><br>
      <input type="submit" value="执行操作" />
      </form>
    </center>
  </body>
</html>
