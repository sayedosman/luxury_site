<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var = "ecomerce" driver = "com.mysql.cj.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/ecomercedb"
         user = "root"  password = "root"/>
   
      <sql:query dataSource="${ecomerce }"  var = "result">
         SELECT * from category;
      </sql:query>
      <table border = "1" width = "100%">
         <tr>
            <th> ID</th>
            <th> Name</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.c_id}"/></td>
               <td><c:out value = "${row.c_name}"/></td>
            </tr>
         </c:forEach>
      </table>
 
</body>
</html>