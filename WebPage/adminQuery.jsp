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
    
    <title>My JSP 'adminQuery.jsp' starting page</title>
    
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
    <%
    	String choice = request.getParameter("student");
    	String key = request.getParameter("tiaojian");
    	String str="";
    	out.print("<h2>请输入参数：</h2>");
    	int choice_int = Integer.parseInt(choice);
    	switch(choice_int){
    		case 1:{
    			out.print("<center><form action='doExecutePage/addStu.jsp' method='post'>"+
    			"学生姓名 ：<input type='text' name='stu_name'><br>学生班级 ：<input type='text' name='stu_class'>"+
    			"<br>学生生日 ：<input type='text' name='stu_birth'><br><input type='submit' value='添加学生信息'>"+
    			"</form></center>");
    		};break;
    		case 2:{
    			out.print("<center><form action='doExecutePage/changeStu.jsp' method='post'>"+
    			"学生学号 ：<input type='text' name='stu_id'><br>"+
    			"学生姓名 ：<input type='text' name='stu_name'><br>学生班级 ：<input type='text' name='stu_class'>"+
    			"<br>学生生日 ：<input type='text' name='stu_birth'><br><input type='submit' value='修改学生信息'>"+
    			"</form></center>");
    		};break;
    		case 3:{
    			out.print("<center><form action='doExecutePage/deleteStu.jsp' method='post'>"+
    			"学生学号 ：<input type='text' name='stu_id'><br>"+
    			"<input type='submit' value='删除学生信息'>"+
    			"</form></center>");
    		};break;
    		case 4:str="select username,password from user where username='"+key+"';";break;
    		case 5:str="select username,password from user where username='"+key+"';";break;
    		case 6:str="select username,password from user where username='"+key+"';";break;
    		case 7:str="select username,password from user where username='"+key+"';";break;
    		case 8:str="select username,password from user where username='"+key+"';";break;
    		case 9:str="select username,password from user where username='"+key+"';";break;
    		case 10:str="select username,password from user where username='"+key+"';";break;
    		case 11:str="select students.stu_id,students.stu_name,scores.cou_id,scores.score from students,scores where students.stu_id='"+key+"';";break;
    		case 12:str="select username,password from user where username='"+key+"';";break;
    		case 13:str="select username,password from user where username='"+key+"';";break;
    	}
    	//out.print(rs.getString(1)+" | "+rs.getString(2)+" | "+rs.getString(3)+" | "+rs.getString(4));
    	out.print("<br><br><a href='admin.jsp'>返回重新选择</a> <a href='index.jsp'>返回首页</a>");
     %>
     </center>
  </body>
</html>
