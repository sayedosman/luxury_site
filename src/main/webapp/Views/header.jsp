<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page   import="Entities.*" %>
     <%@page   import="RepositoryImp.*" %>
      <%@page   import="java.util.List" %>
<!DOCTYPE html>
<html>
<title>Luxury Watches A Ecommerce Category Flat Bootstrap Resposive Website Template | Home :: w3layouts</title>
<link href="front_end/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
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
<!--top-header-->
	<div class="top-header">
		<div class="container">
			<div class="top-header-main">
				<div class="col-md-6 top-header-left">
					<div class="drop">
						<div class="box">
							<select tabindex="4" class="dropdown drop">
								<option value="" class="label">Dollar :</option>
								<option value="1">Dollar</option>
								<optiosn value="2">Euro</option>
							</select>
						</div>
						<div class="box1">
							<select tabindex="4" class="dropdown">
								<option value="" class="label">English :</option>
								<option value="1">English</option>
								<option value="2">French</option>
								<option value="3">German</option>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="box1">
				<%!User u=new User(); %>
				 <% 
		
				 u=(User)session.getAttribute("user");
				 if(u!=null){%>
					 <div style=color:white;> welcome
                 <%=u.getFirstname()%>
           <%} %>
			
				</div>
				</div>
				<div class="col-md-6 top-header-left">
					<div class="cart box_1">
						<a href="Checkout.jsp">
							 <div class="total">
							 <%
							
								if(session.getAttribute("price")!=null)
								{%>
								$<%=session.getAttribute("price") %>
								
								<%} %></div>
								<img src="front_end/images/cart-1.png" alt="" />
						</a>
						<p><a href="/luxury_site/Empty" class="simpleCart_empty">Empty Cart</a></p>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--top-header-->
	<!--start-logo-->
	<div class="logo">
		<a href="index.html"><h1>Luxury Watches</h1></a>
	</div>
	<!--start-logo-->
	<!--bottom-header-->
		<div class="header-bottom">
		<div class="container">
			<div class="header">
				<div class="col-md-9 header-left">
				<div class="top-nav">
				<ul class="memenu skyblue"><li class="active"><a href="">Home</a></li>
					<li class="grid"><a href="#">Category</a>
						<div class="mepanel">
					<div class="col1 me-one">
					
					    <ul>
					  <% 
					  CategoryRepositoryImp categoriesImp=new CategoryRepositoryImp();
					 List<Category>categories= categoriesImp. getAllCategory();
					 for(Category category:categories)
					 {
					  %>
					  <li><a  href="searchCatogery.jsp?id=<%=category.getName()%>" method="post"><%= category.getName()%></a></li>
						
						<%} %>
						
						</ul>
							</div>
							</div>
					</li>
					
					<li class="grid"><a href="#">Brands</a>
						<div class="mepanel">
					<div class="col1 me-one">
					
					    <ul>
					    
					      <% 
					  BrandRepositoryImp brandsImp=new BrandRepositoryImp();
					 List<Brand>brands= brandsImp.getAllBrand();
					 for(Brand brand:brands)
					 {
					  %>
					  <li><a href="searchBrand.jsp?id=<%= brand.getName()%>" action="post"><%= brand.getName()%></a></li>
						<%} %>
					    
					    </ul>
							</div>
							</div>
					</li>
					<li class="grid"><a href="contact.jsp">Contact</a>
						</li>
						
						
		
						
						
						
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
				<div class="col-md-3 header-right"> 
				<div class="search-bar">
				<form action="/luxury_site/AllController" method="POST">
					<input type="text"   name="name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
					<input type="submit" name="submit"   value="search"/>
									
				</div>
			</div>
			<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</body>
</html>
