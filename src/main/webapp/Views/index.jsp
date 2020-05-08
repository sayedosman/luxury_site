<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
     <%@page   import="Entities.*" %>
     <%@page   import="RepositoryImp.*" %>
      <%@page   import="java.util.List" %>
<html>
<head>
<title>Luxury Watches A Ecommerce Category Flat Bootstrap Resposive Website Template | Home :: w3layouts</title>
<link href="front_end/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
<script src="front_end/js/jquery-1.11.0.min.js"></script>
<!--Custom-Theme-files-->
<!--theme-style-->
<link href="front_end/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Luxury Watches Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="/__/firebase/7.14.2/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->

<!-- Initialize Firebase -->
<script src="/__/firebase/init.js"></script>


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
	<!--top-header-->
	
	<!--top-header-->
	<!--start-logo-->
	
	<!--start-logo-->
	<!--bottom-header-->
		
		
	<!--bottom-header-->
	<!--banner-starts-->
	<div class="bnr" id="home">
		<div  id="top" class="callbacks_container">
			<ul class="rslides" id="slider4">
			    <li>
					<img src="front_end/images/bnr-1.jpg" alt=""/>
				</li>
				<li>
					<img src="front_end/images/bnr-2.jpg" alt=""/>
				</li>
				<li>
					<img src="front_end/images/bnr-3.jpg" alt=""/>
				</li>
			</ul>
		</div>
		<div class="clearfix"> </div>
	</div>
	<!--banner-ends--> 
	<!--Slider-Starts-Here-->
				<script src="front_end/js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: true,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			<!--End-slider-script-->
	<!--about-starts-->
	<div class="about"> 
		<div class="container">
			<div class="about-top grid-1">
				<div class="col-md-4 about-left">
					<figure class="effect-bubba">
						<img class="img-responsive" src="front_end/images/abt-1.jpg" alt=""/>
						<figcaption>
							<h2>Nulla maximus nunc</h2>
							<p>In sit amet sapien eros Integer dolore magna aliqua</p>	
						</figcaption>			
					</figure>
				</div>
				<div class="col-md-4 about-left">
					<figure class="effect-bubba">
						<img class="img-responsive" src="front_end/images/abt-2.jpg" alt=""/>
						<figcaption>
							<h4>Mauris erat augue</h4>
							<p>In sit amet sapien eros Integer dolore magna aliqua</p>	
						</figcaption>			
					</figure>
				</div>
				<div class="col-md-4 about-left">
					<figure class="effect-bubba">
						<img class="img-responsive" src="front_end/images/abt-3.jpg" alt=""/>
						<figcaption>
							<h4>Cras elit mauris</h4>
							<p>In sit amet sapien eros Integer dolore magna aliqua</p>	
						</figcaption>			
					</figure>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--about-end-->
	<!--product-starts-->
	<div class="product"> 
		<div class="container">
			<div class="product-top">
				<div class="product-one">
		            <%
		            int i=1;
		             ProductRepositoryImp productsImp=new ProductRepositoryImp();
					 List<Product>products= productsImp. getAllProduct();
					 for(Product product:products)
					 {
							String name="front_end/"+product.getImages().get(0).getName();
							
					 
					  %>
							
					<div class="col-md-4 product-left p-left">
							<div class="product-main simpleCart_shelfItem">
						
							<a href="singleProduct.jsp?id=<%=product.getId()%>" class="mask"><img class="img-responsive zoom-img" src=<%=name %>  alt="" /></a>
						<div class="product-bottom">
						<h3><%=product.getName() %></h3>
						<%
						   if(product.getQuantity()==product.getSold())
						   {
							   
							   
						%>
						
						<span>sold</span>
						<%} %>
						<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ <%=product.getPrice() %></span></h4>
							</div>
							<div class="srch">
								<span>-<%=product.getDiscount()%>%</span>
							
						</div>
						
							</div>
						</div>
						<%
						if(i==3)
						{
						%>
						<div class="clearfix"></div>
						<%}
						i++;
						} %>
						
					
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		      </div>					
			</div>
		</div>
	</div>
	<!--product-end-->	
	 <jsp:include page="footer.jsp" />
</body>
</html>