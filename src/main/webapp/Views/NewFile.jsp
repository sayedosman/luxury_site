<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page   import="Entities.*" %>
     <%@page   import="RepositoryImp.*" %>
      <%@page   import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

HttpSession s=request.getSession();
List<Product>products=(List<Product>) s.getAttribute("products");
for(Product p:products){%>
<%=p.getName() %>
<%} 
%>
<%= s.getAttribute("price") %>
</body>
</html>