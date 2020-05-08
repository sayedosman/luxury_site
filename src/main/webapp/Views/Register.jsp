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
<link href="front_end/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="/__/firebase/7.14.2/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->

<!-- Initialize Firebase -->
<script src="/__/firebase/init.js"></script>
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
	                   String pass=request.getParameter("pass");
	                   String fname=request.getParameter("fname");
	                   String lname=request.getParameter("lname");
	                   String message=request.getParameter("message");
	                   String mobile=request.getParameter("mobile ");
	                   String address=request.getParameter("address");
	                   String gender=request.getParameter("gender");
	                   if(message==null)
	                   {
	                   %>
                    <form action="/luxury_site/AllController" method="post">
                    <input placeholder="First name" type="text" tabindex="3" required name="fname"  value="">
		        
			    <input placeholder="Last name" type="text" tabindex="4" required name="lname" value="">
		         
               <input placeholder="Email" type="text" tabindex="3" required name="email"  value="">
		        
			    <input placeholder="Mobile" type="text" tabindex="4" required name="mobile" value="">
			    <input placeholder="Adrres" type="text" tabindex="4" required name="address" value="">
		            <ul>
							<li><label class="radio left"><input type="radio" name="gender"   value="male"><i></i>Male</label></li>
							<li><label class="radio"><input type="radio" name="gender"  value="female"><i></i>Female</label></li>
							<div class="clearfix"></div>
						</ul>
		  
                        <input placeholder="Password" type="password" tabindex="4" required name ="pass" value="">
					
					<input placeholder="Password" type="password" tabindex="4" required name ="passr" value="">';
					
			<div class="address submit">
							<input type="submit" value="register" name="submit">
						</div>
						</form>
         

                        <%}else{ %>
                        <form action="/luxury_site/AllController" method="post">
                    <input placeholder="First name" type="text" tabindex="3" required name="fname"  value=<%=fname%>>
		        
			    <input placeholder="Last name" type="text" tabindex="4" required name="lname" value=<%=lname%>>
		         
               <input placeholder="Email" type="text" tabindex="3" required name="email"  value=<%=email%>>
		        
			    <input placeholder="Mobile" type="text" tabindex="4" required name="mobile" value=<%=mobile%>>
			    <input placeholder="Adrres" type="text" tabindex="4" required name="address" value=<%=address%>>
		            <ul>
		            <%if(gender.equals("male")) {%>
							<li><label class="radio left"><input type="radio" name="gender" checked  value="male"><i></i>Male</label></li>
							<li><label class="radio"><input type="radio" name="gender"  value="female"><i></i>Female</label></li>
							<%} else{ %>
							<li><label class="radio left"><input type="radio" name="gender"   value="m"><i></i>Male</label></li>
							<li><label class="radio"><input type="radio" name="gender" checked  value="f"><i></i>Female</label></li>
							<%} %>
							<div class="clearfix"></div>
						</ul>
		              <input placeholder="Password" type="password" tabindex="4" required name ="pass" value="">
					
					<input placeholder="Password" type="password" tabindex="4" required name ="passr" value="">';
					
                   </div>
				
			<div class="address submit">
							<input type="submit" value="register" name="submit">
						</div>
						</form>
							
                        <%}if(message!=null) {%>
                        <%=message %>
                         <%} %>
                        </div>
					</div>
				</div>
				
				<div class="clearfix"></div>
			</div>
		</div>
	</div>


<jsp:include page="footer.jsp" />
</body>
</html>