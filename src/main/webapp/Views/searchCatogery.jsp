<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page   import="Entities.*" %>
     <%@page   import="RepositoryImp.*" %>
      <%@page   import="java.util.List" %>
<!DOCTYPE html>
<html>
<title>Luxury Watches A Ecommerce Category Flat Bootstarp Resposive Website Template | Product :: w3layouts</title>
<link href="front_end/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
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
<script src="front_end/sjs/jquery.easydropdown.js"></script>			
</head>
<body>
<jsp:include page="header.jsp" />
<!--bottom-header-->
	<!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li class="active">New Products</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!--prdt-starts-->
	<div class="prdt"> 
		<div class="container">
			<div class="prdt-top">
				<div class="col-md-9 prdt-left">
					<div class="product-one">
					<% 
					int i=1;
					String namep="";
					String id=request.getParameter("id");
					CategoryRepositoryImp  category=new CategoryRepositoryImp();
					for(Product product:category.getCategory(id).getProducts())
					{
						
						
						namep="front_end/"+product.getImages().get(0).getName();
				
					%>
						
						<div class="col-md-4 product-left p-left">
						<div class="product-main simpleCart_shelfItem">
						<a href="singleProduct.jsp?id=<%=product.getId() %>" class="mask"><img class="img-responsive zoom-img" src=<%=namep %> alt="" /></a>';
					
					     <div class="product-bottom">
								<h3><%=product.getName() %></h3>
								<% if(product.getQuantity()==product.getSold())
								{%>
									<span>sold</span>
									<%} %>
								<%if(product.getOffer().size()>0){ %>
								<p><%=product.getOffer().get(0).getName() %></p>
								<%} %>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ <%=product.getPrice() %></span></h4>
							</div>
							<div class="srch">
								<span>-<%=product.getDiscount()%>%</span>
							
						</div>
							</div>
						</div>
						<%if(i==3){%>
							<div class="clearfix"></div>
							<%i++; %>
							<%}%>
								
					<%}%>



		
						  <div class="clearfix"></div>
					     
				</div>
            </div>				
				
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

















	 <jsp:include page="footer.jsp" />
</body>
</html>