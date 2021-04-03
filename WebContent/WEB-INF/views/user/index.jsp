<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
-->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ustora Demo</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="<c:url value="resources/user/css/bootstrap.min.css"/>" type="text/css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<c:url value="resources/user/css/font-awesome.min.css"/>" type="text/css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<c:url value="resources/user/css/owl.carousel.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="resources/user/css/style.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="resources/user/css/responsive.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="resources/user/css/style1.css"/>" type="text/css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   <%@include file="/WEB-INF/views/user/header.jsp"%>    
   
    <div class="promo-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo1">
                        <i class="fa fa-refresh"></i>
                        <p>30 Days return</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo2">
                        <i class="fa fa-truck"></i>
                        <p>Free shipping</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo3">
                        <i class="fa fa-lock"></i>
                        <p>Secure payments</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo4">
                        <i class="fa fa-gift"></i>
                        <p>New products</p>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End promo area -->
    
    <div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title">Latest Products</h2>
                        <div class="product-carousel">
                            <c:forEach var="hot" items="${newProducts}">
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img class="a" src="resources/user/img/${hot.idcate}.jpg" alt="">
                                    <a  class="b"  href="detail/${hot.idcate}.htm" class="view-details-link"><i class="fa fa-link"></i>${hot.namecate}</a>
                                
                                <div class="product-carousel-price">
                                    <ins class="c" >${hot.prices - hot.prices*hot.discount/100}				</ins>
                                    <del>${hot.prices}</del>
                                </div>
                                    <div class="">
                                   
                                        <button  class="add-to-cart-link" type ="button"><i class="fa fa-shopping-cart"></i> Add to cart</button>
                                        
                                        </div>
                                    
                                </div>
                                
                                 
                            </div>
                            </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End main content area -->
    
    <div class="brands-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="brand-wrapper">
                        <div class="brand-list">
                            <img src="resources/user/img/brand1.png" alt="">
                            <img src="resources/user/img/brand2.png" alt="">
                            <img src="resources/user/img/brand3.png" alt="">
                            <img src="resources/user/img/brand4.png" alt="">
                            <img src="resources/user/img/brand5.png" alt="">
                            <img src="resources/user/img/brand6.png" alt="">
                            <img src="resources/user/img/brand1.png" alt="">
                            <img src="resources/user/img/brand2.png" alt="">                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End brands area -->
    
    <div class="product-widget-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
            	
            	
                <div class="col-md-4">
                	
                    <div class="single-product-widget">
                    
                        <h2 class="product-wid-title">TOP NEW</h2>
                           
                        <a href="isNew.htm" class="wid-view-more">View All</a>
                       
                        <c:forEach var="hot" items="${newProducts}">
                        <div class="single-wid-product">
                    	 
                              <a href="detail/${hot.idcate}.htm"><img src="<c:url value="/resources/user/img/${hot.idcate}.jpg"/>" alt ="" class="product-thumb"></a>
                            <h2><a href="detail/${hot.idcate}.htm">${hot.namecate}</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>${hot.prices - hot.prices*hot.discount/100}</ins> <del>${hot.prices}</del>
                            </div>  
						 
                        </div>   
                        </c:forEach>     
                    </div>
                   
                </div>
                
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">Recently Viewed</h2>
                        <a href="#" class="wid-view-more">View All</a>
                        <c:forEach var="hot" items="${newProducts}">
                        <div class="single-wid-product">
                            	 
                            <a href="detail/${hot.idcate}.htm"><img src="<c:url value="/resources/user/img/${hot.idcate}.jpg"/>" alt ="" class="product-thumb"></a>
                            <h2><a href="detail/${hot.idcate}.htm">${hot.namecate}</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>${hot.prices - hot.prices*hot.discount/100}</ins> <del>${hot.prices}</del>
                            </div>  
						       
                        </div>
                        </c:forEach>   
                       
                      
                    </div>
                </div>
                <div class="col-md-4">
        
                            <div class="single-product-widget">
                        <h2 class="product-wid-title">Recently Viewed</h2>
                        <a href="#" class="wid-view-more">View All</a>
                        <c:forEach var="hot" items="${newProducts}">
                        <div class="single-wid-product">
                            	 
                            <a href="detail/${hot.idcate}.htm"><img src="<c:url value="/resources/user/img/${hot.idcate}.jpg"/>" alt ="" class="product-thumb"></a>
                            <h2><a href="detail/${hot.idcate}.htm">${hot.namecate}</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>${hot.prices - hot.prices*hot.discount/100}</ins> <del>${hot.prices}</del>
                            </div>  
						        
                        </div>
                        </c:forEach>  
                       
                      
                    </div>           
                        </div>
                </div>
            </div>
        </div>
    </div> <!-- End product widget area -->
    
    <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2>u<span>Stora</span></h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit, debitis, quisquam. Laborum commodi veritatis magni at?</p>
                        <div class="footer-social">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">User Navigation </h2>
                        <ul>
                            <li><a href="#">My account</a></li>
                            <li><a href="#">Order history</a></li>
                            <li><a href="#">Wishlist</a></li>
                            <li><a href="#">Vendor contact</a></li>
                            <li><a href="#">Front page</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">Categories</h2>
                        <ul>
                            <li><a href="#">Mobile Phone</a></li>
                            <li><a href="#">Home accesseries</a></li>
                            <li><a href="#">LED TV</a></li>
                            <li><a href="#">Computer</a></li>
                            <li><a href="#">Gadets</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-newsletter">
                        <h2 class="footer-wid-title">Newsletter</h2>
                        <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                        <div class="newsletter-form">
                            <form action="#">
                                <input type="email" placeholder="Type your email">
                                <input type="submit" value="Subscribe">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer top area -->
    
  	<%@include file="/WEB-INF/views/user/footer.jsp"%>
   
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/resources/user/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="resources/user/js/owl.carousel.min.js"></script>
    <script src="resources/user/js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="resources/user/js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="resources/user/js/main.js"></script>
    
    <!-- Slider -->
    <script type="text/javascript" src="resources/user/js/bxslider.min.js"></script>
	<script type="text/javascript" src="resources/user/js/script.slider.js"></script>
	<script type="text/javascript" src="resources/user/js/cart.js"></script>
<script type="text/javascript" src="resources/css/cart.js"></script>
<script type="text/javascript">
	//Modal
	var modal = document.getElementById("myModal");
	var btn = document.getElementById("cart");
	var close = document.getElementsByClassName("close")[0];
	// tại sao lại có [0] như  thế này bởi vì mỗi close là một html colection nên khi mình muốn lấy giá trị html thì phải thêm [0]. 
	
	var close_footer = document.getElementsByClassName("close-footer")[0];
	var order = document.getElementsByClassName("order")[0];
	btn.onclick = function () {
	  modal.style.display = "block";
	}
	close.onclick = function () {
	  modal.style.display = "none";
	}
	close_footer.onclick = function () {
	  modal.style.display = "none";
	}
	order.onclick = function () {
	  alert("Cảm ơn bạn đã thanh toán đơn hàng")
	}
	window.onclick = function (event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}
	//==========================
	// xóa cart
	var remove_cart = document.getElementsByClassName("btn-danger");
	for (var i = 0; i < remove_cart.length; i++) {
	  var button = remove_cart[i]
	  button.addEventListener("click", function () {
	    var button_remove = event.target
	    button_remove.parentElement.parentElement.remove()
	    updatecart()
	  })
	}	
	//===========
		// update cart 
	function updatecart() {
	  var cart_item = document.getElementsByClassName("cart-items")[0];
	  var cart_rows = cart_item.getElementsByClassName("cart-row");
	  var total = 0;
	  for (var i = 0; i < cart_rows.length; i++) {
	    var cart_row = cart_rows[i]
	    var price_item = cart_row.getElementsByClassName("cart-price ")[0]
	    var quantity_item = cart_row.getElementsByClassName("cart-quantity-input")[0]
	    var price = parseFloat(price_item.innerText)// chuyển một chuổi string sang number để tính tổng tiền.
	    var quantity = quantity_item.value // lấy giá trị trong thẻ input
	    total = total + (price * quantity)
	  }
	  document.getElementsByClassName("cart-total-price")[0].innerText = total + '$'
	  // Thay đổi text = total trong .cart-total-price. Chỉ có một .cart-total-price nên mình sử dụng [0].
	}
	//===========
	// thay đổi số lượng sản phẩm
	var quantity_input = document.getElementsByClassName("cart-quantity-input");
	for (var i = 0; i < quantity_input.length; i++) {
	  var input = quantity_input[i];
	  input.addEventListener("change", function (event) {
	    var input = event.target
	    if (isNaN(input.value) || input.value <= 0) {
	      input.value = 1;
	    }
	    updatecart()
	  })
	}
	//===========
	// Thêm vào giỏ
var add_cart = document.getElementsByClassName("add-to-cart-link");
for (var i = 0; i < add_cart.length; i++) {
  var add = add_cart[i];
  add.addEventListener("click", function (event) {

    var button = event.target;
    var product = button.parentElement.parentElement;
    var img = product.parentElement.getElementsByClassName("a")[0].src
    console.log(img)
    var title = product.getElementsByClassName("b")[0].innerText
    var price = product.getElementsByClassName("c")[0].innerText
    addItemToCart(title, price, img)
    // Khi thêm sản phẩm vào giỏ hàng thì sẽ hiển thị modal
    modal.style.display = "block";
    
    updatecart()
  })
}


	</script>
  </body>
</html>