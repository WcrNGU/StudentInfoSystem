<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user.jsp' starting page</title>
    
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
      <form action="userQuery.jsp" method="post">
      <table>
        <tr>
          <td>查询方式</td>
          <td>查询值</td>
        </tr>
        <tr>
          <td>
          	  <select name="student" >
                <option value="1" >  按学号       查询 学生信息</option>
                <option value="2" >  按班级       查询 学生信息</option>
                <option value="3" >  按生日       查询 学生信息</option>
                <option value="4" >  按职称       查询 教师信息</option>
                <option value="5" >  按学科       查询 教师信息</option>
                <option value="6" >  按生日       查询 教师信息</option>
                <option value="7" >按上课时间   查询 课程信息</option>
                <option value="8" >  按学时       查询 课程信息</option>
                <option value="9" >按课程类别   查询 课程信息</option>
                <option value="10" >按授课教师 查询 课程信息</option>
                <option value="11" >  按学号    查询 学生成绩</option>
                <option value="12" >  按班级    查询 学生成绩</option>
                <option value="13" >  按课程    查询 学生成绩</option>
              </select>
          </td>
          <td>
            <input type="text" name="tiaojian" >
          </td>
        </tr>
      </table>
      <input type="submit" value="查询" />
      </form>
    </center>
  </body>
</html>
