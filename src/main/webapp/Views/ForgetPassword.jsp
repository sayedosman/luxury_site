<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page   import="Entities.*" %>
     <%@page   import="RepositoryImp.*" %>
      <%@page   import="java.util.List" %>
<!DOCTYPE html>
<html>
<title>Luxury Watches A Ecommerce Category Flat Bootstarp Resposive Website Template | Account :: w3layouts</title>
<link href="front_end/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--jQuery (necessary for Bootstrap's JavaScript plugins)-->
<script src="front_end/js/jquery-1.11.0.min.js"></script>
<!--Custom-Theme-files-->
<!--theme-style-->
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="/__/firebase/7.14.2/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->

<!-- Initialize Firebase -->
<script src="/__/firebase/init.js"></script>
<link href="front_end/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Luxury Watches Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--start-menu-->
<script src="front_end/js/simpleCart.min.js"> </script>
<link href="front_end/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="front_end/js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!--dropdown-->
<script src="front_end/js/jquery.easydropdown.js"></script>			
</head>

<body>
<jsp:include page="header.jsp" />

<div class="account">
		<div class="container">
		<div class="account-top heading">
				<h2>ACCOUNT</h2>
			</div>
			<div class="account-main">
				<div class="col-md-6 account-left">
					<h3>Existing User</h3>
					<div class="account-bottom">
					<%String email=request.getParameter("email");
					String message=request.getParameter("message");
					 if(email!=null)
	                   {
	                   %>
                  <form action="/luxury_site/AllController" method="post">

             <input placeholder="username" type="text" tabindex="3" required name="email"  value=<%=email %>>
             <div class="address">
							<div class="address submit">
							<input type="submit" value="Forget" name="submit">
							</div>
							</form>
					
					<%}else{ %>
					
					<form action="/luxury_site/AllController" method="post">

             <input placeholder="username" type="text" tabindex="3" required name="email"  value="">
             <div class="address">
							<div class="address submit">
							<input type="submit" value="Forget" name="submit">
							</div>
							</form>
					
					<%} %>
					<%if(message!=null) {%>
                        <%=message %>
                         <%} %>
					</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>


<jsp:include page="footer.jsp" />
					

</body>
</html>