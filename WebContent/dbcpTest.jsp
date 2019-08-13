<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DBCP TEST</title>
</head>
<body>
	<h2>마리아 DB에 연결 되었습니까?</h2>
<%
   Connection con = null;
  // Statement state =null;
   //ResultSet rs = null;
   // String url = "jdbc:mysql://localhost:3306/jdbcTest";
   // String id = "testid";
  
  Class.forName("org.mariadb.jdbc.Driver");
      con = DriverManager.getConnection("jdbc:mariadb://192.168.2.13:3306/miniproject",
            "root","1234");
      if(con!=null){
         System.out.println("마리아DB에 연결 되었습니다");
      }
      
  
   %>

</body>
</html>