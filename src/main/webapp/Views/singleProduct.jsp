<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page   import="Entities.*" %>
     <%@page   import="RepositoryImp.*" %>
      <%@page   import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Luxury Watches A Ecommerce Category Flat Bootstarp Resposive Website Template | Single :: w3layouts</title>
<link href="front_end/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
<script src="front_end/js/jquery-1.11.0.min.js"></script>
<!--Custom-Theme-files-->
<!--theme-style-->
<link href="front_end/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="/__/firebase/7.14.2/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->

<!-- Initialize Firebase -->
<script src="/__/firebase/init.js"></script>
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
<script type="text/javascript" src="front_end/js/minicart.min.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!--dropdown-->
<script src="js/jquery.easydropdown.js"></script>	
<script type="text/javascript">
	$(function() {
	
	    var menu_ul = $('.menu_drop > li > ul'),
	           menu_a  = $('.menu_drop > li > a');
	    
	    menu_ul.hide();
	
	    menu_a.click(function(e) {
	        e.preventDefault();
	        if(!$(this).hasClass('active')) {
	            menu_a.removeClass('active');
	            menu_ul.filter(':visible').slideUp('normal');
	            $(this).addClass('active').next().stop(true,true).slideDown('normal');
	        } else {
	            $(this).removeClass('active');
	            $(this).next().stop(true,true).slideUp('normal');
	        }
	    });
	
	});
</script>		
</head>
<body> 
	<!--top-header-->

	<!--top-header-->
	<jsp:include page="header.jsp" />
	<!--start-logo-->

	<!--bottom-header-->
	<!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li class="active">Single</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!--start-single-->
	<div class="single contact">
		<div class="container">
			<div class="single-main">
				<div class="col-md-9 single-main-left">
				<div class="sngl-top">
					<div class="col-md-5 single-top-left">	
						<div class="flexslider">
							  <ul class="slides">
					         <%
					         String name="";
					         int productId=Integer.parseInt(request.getParameter("id"));
					         String message=request.getParameter("message");
					         ProductRepositoryImp products=new ProductRepositoryImp();
					     
					       Product product=products.getProduct(productId);
					    	  
					    	   for(Images images:product.getImages())
					    	   {
					    		    name="front_end/"+images.getName();
									 
					    		   %>
					    	
					    		  <li data-thumb=<%=name%>>
					    		   <div class="thumb-image"> <img src=<%=name%> data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
					    	    <%} %>
					
							  </ul>
						</div>
						<!-- FlexSlider -->
						<script src="front_end/js/imagezoom.js"></script>
						<script defer src="front_end/js/jquery.flexslider.js"></script>
						<link rel="front_end/stylesheet" href="front_end/css/flexslider.css" type="text/css" media="screen" />

						<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
						  $('.flexslider').flexslider({
							animation: "slide",
							controlNav: "thumbnails"
						  });
						});
						</script>
					</div>	
					<div class="col-md-7 single-top-right">
						<div class="single-para simpleCart_shelfItem">
						<h2>Lorem Ipsum</h2>
							<div class="star-on">
								<ul class="star-footer">
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
									</ul>
								<div class="review">
									<a href="#"> 1 customer review </a>
									
								</div>
							<div class="clearfix"> </div>
							</div>
                     
	                            
							<h5 class="item_price"> $<%=product.getPrice() %> </h5>							
							<p> <%=product.getDescription() %></p>
							<div class="available">
								<ul>
									<li>Color
										<select>    				
					                   <% for(Color color:product.getColors())
					                   {%>
					              <option><%=color.getName() %></option>
					                 <% }%>
					
					                    </select>
					              </li>
								<li class="size-in">Size<select>
					                 <% for(Size size:product.getSizes())
					                   {%>
					              <option><%=size.getName() %></option>
					                 <% }%>
					                    </select>
					                    </li>
								<li class="size-in">
								
								Offers 
								
								
								
								
								</li>
								<div class="clearfix"> </div>
							</ul>
						</div>
							<ul class="tag-men">
								<li><span>TAG</span>
								<span class="women1">: Women,</span></li>
								<li><span>SKU</span>
								<span class="women1">: CK09</span></li>
							</ul>
							<%
							if(message!=null){%>
							<%=message %>
							
							
							<%}%>
							<form action="/luxury_site/AllController" method="POST">
								<div class="address submit">
										<input type="hidden" name="id" value=<%=productId %> />
										<input type="text" required="required"    name="quantity" value="">
										
										<input type="submit" name="submit"   value="Add to cart"/>
										</div>
																			 
								</form>
								</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="tabs">
					<ul class="menu_drop">
				<li class="item1"><a href="#"><img src="images/arrow.png" alt="">Description</a>
					<ul>
						<li class="subitem1"><a href="#"> 
					<%=product.getDescription() %>
					    ?>
                               </a></li>
						</ul>
				</li>
				<li class="item2"><a href="#"><img src="images/arrow.png" alt="">Additional information</a>
					<ul>
					    <li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
						<li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
					</ul>
				</li>
				<li class="item3"><a href="#"><img src="images/arrow.png" alt="">Reviews (10)</a>
					<ul>
						<li class="subitem1"><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</a></li>
						<li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
						<li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
					</ul>
				</li>
				<li class="item4"><a href="#"><img src="images/arrow.png" alt="">Helpful Links</a>
					<ul>
					    <li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
						<li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
					</ul>
				</li>
				<li class="item5"><a href="#"><img src="images/arrow.png" alt="">Make A Gift</a>
					<ul>
						<li class="subitem1"><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</a></li>
						<li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
						<li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
					</ul>
				</li>
	 		</ul>
				</div>
				<div class="latestproducts">
		       <div class="product-one">	
		          
						  
					<% 
					int i=1;
					String namep;
					for(Product productsid:product.getCategory().getProducts()){
						namep="front_end/"+productsid.getImages().get(0).getName();
					
					%>
					 <div class="col-md-4 product-left p-left"> 
					<div class="product-main simpleCart_shelfItem">
					
					<a href="singleProduct.jsp?id=<%=productsid.getId() %>" class="mask"><img class="img-responsive zoom-img" src=<%=namep %> alt="" /></a>      
						
						<div class="product-bottom">
								<h3> <%=productsid.getName() %></h3>';
								<% if(productsid.getQuantity()==productsid.getSold()){%>
								<span>sold</span>
								<%} %>
								<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ <%=productsid.getPrice() %> </span></h4>
							</div>
							<div class="srch">
							
								<span>-<%=productsid.getDiscount() %></span>
							</div>
										
						</div>
					</div>
						<% if(i%3==0){%>
							<div class="clearfix">
						</div>
						
						 
							<%i++;} %>	
								
								<%} %>
						<div class="clearfix"></div>	
						
				</div>
			</div>
			</div>			
						
				<div class="col-md-3 single-right">
					<div class="w_sidebar">
						<section  class="sky-form">
							<h4>Catogories</h4>
							<div class="row1 scroll-pane">
								<div class="col col-4">
						
						<%  CategoryRepositoryImp categories=new CategoryRepositoryImp();
						for(Category category:categories.getAllCategory()){
						if(category.getName().equals(product.getCategory().getName())){
						%>
						
					<label class="checkbox"><input type="checkbox" name="checkbox" checked="" ><i></i><%=category.getName() %> </label><%} %>
					
					<label class="checkbox"><input type="checkbox" name="checkbox" disabled/><i></i><%=category.getName() %></label>
							
							<%} %>
						</div>
							
						</section>

						<section  class="sky-form">
							<h4>Brand</h4>
							<div class="row1 row2 scroll-pane">
						
						
								<%  BrandRepositoryImp brands=new BrandRepositoryImp();
						for(Brand brand:brands.getAllBrand()){
						if(brand.getName().equals(product.getBrand().getName())){
						%>
						
					<label class="checkbox"><input type="checkbox" name="checkbox" checked="" ><i></i><%=brand.getName() %> </label><%} %>
						
					<label class="checkbox"><input type="checkbox" name="checkbox" disabled/><i></i><%=brand.getName() %></label>
							<%} %>
						</div>
							
						</section>
						<section class="sky-form">
							<h4>Colour</h4>
								<ul class="w_nav2">
									<li><a class="color1" href="#"></a></li>
									<li><a class="color2" href="#"></a></li>
									<li><a class="color3" href="#"></a></li>
									<li><a class="color4" href="#"></a></li>
									<li><a class="color5" href="#"></a></li>
									<li><a class="color6" href="#"></a></li>
									<li><a class="color7" href="#"></a></li>
									<li><a class="color8" href="#"></a></li>
									<li><a class="color9" href="#"></a></li>
									<li><a class="color10" href="#"></a></li>
									<li><a class="color12" href="#"></a></li>
									<li><a class="color13" href="#"></a></li>
									<li><a class="color14" href="#"></a></li>
									<li><a class="color15" href="#"></a></li>
									<li><a class="color5" href="#"></a></li>
									<li><a class="color6" href="#"></a></li>
									<li><a class="color7" href="#"></a></li>
									<li><a class="color8" href="#"></a></li>
									<li><a class="color9" href="#"></a></li>
									<li><a class="color10" href="#"></a></li>
								</ul>
					</section>
					<section class="sky-form">
							<h4>discount</h4>
							<div class="row1 row2 scroll-pane">
							
						<%
						OfferRepositoryImp offers=new OfferRepositoryImp();
						for(Offer offer:offers.getAllOffer())
						{
							if(offer.getName().equals(product.getOffer().get(0).getName()))
							{
								%>
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i><%=offer.getName()%> </label>
							<%} %>
						<label class="checkbox"><input type="checkbox" name="checkbox" disabled/><i></i><%=offer.getName()%></label>
									
							<% }%>
						
							
							</div>						
						</section>
						
					
								
						
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	 <jsp:include page="footer.jsp" />			
					
					

</body>
</html>