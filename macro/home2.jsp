<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
    String username = session.getAttribute("username").toString();
%>
<html>
<head>
        <title>Macrocenter</title>
        <link rel="stylesheet" href="styles.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
</head>
<body>
<div class="header">
    <div class="container">
        <div class="navbar">
            <div class="logo">
                <img src="logo.png" width="200px">
            </div>
                <nav>
                <ul>
                    <li><a href="products2.html">Products</a></li>
                    <li><a href="login.jsp">Welcome,<%= username%>!</a></li>
                </ul>
            </nav>
            <a href="cart.jsp">
            <img src="cart.png" width="30px" height:"30px">
            </a>
        </div>
        <div class="row">
            <div class="col-2">
                <h1>Computers and Electronics</h1>
                <p>Your go to place to take your PC to a whole new level</p>
                <a href="products.html"class="btn">Explore! &#10148;</a>
            </div>
            <div class="col-2">
                <img src="backgroundhome.jpg">
            </div>
    
        </div>
    
    </div>
</div>
<!------featured categories------->
<div class="categories">
    <div class="small-container">
        <div class="row">
            <div class="col-3">
             <img src="img1.jpg" height="225px">  
            </div>
            <div class="col-3">
             <img src="img2.jpg">
            </div>
            <div class="col-3">
             <img src="img3.jpg">
            </div>
       </div>
    </div>
</div>
<!------featured products------->
<div class="small-container">
    <h2 class="title">Featured Products</h2>
    <div class="row">
        <div class="col-4">
            <img src="core.png">
            <h4>Intel i7 8800k</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
            </div>
            <p>$375.00</p>
        </div>
        <div class="col-4">
            <img src="monitor.jpg">
            <h4>HP OLED 4k 240Hz Monitor</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$250.00</p>
        </div>
        <div class="col-4">
            <img src="storage.png">
            <h4>Seagate Barracuda SSD and HDD-1TB</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
            </div>
            <p>$450.00</p>
        </div>
        <div class="col-4">
            <img src="ram.jpg">
            <h4>TridentX DDR4 16GB RAM</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$150.00</p>
        </div>
    </div>

    <h2 class="title">Latest Products</h2>
    <div class="row">
        <div class="col-4">
            <img src="ryzen.jpg">
            <h4>Ryzen 9 5900x</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
            </div>
            <p>$375.00</p>
        </div>
        <div class="col-4">
            <img src="mboard.jpg">
            <h4>GIGABYTE motherboard w/ wifi&bluetooth</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$250.00</p>
        </div>
        <div class="col-4">
            <img src="lap.png">
            <h4>ALienware GenX laptop(i9/3080)</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
            </div>
            <p>$2250.00</p>
        </div>
        <div class="col-4">
            <img src="keyb.jpeg">
            <h4>60%mecanical Keyboard TKL</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$150.00</p>
        </div>
    </div>
    <div class="row">
        <div class="col-4">
            <img src="mouse.jpg">
            <h4>Logitech G903 gaming mouse</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
            </div>
            <p>$375.00</p>
        </div>
        <div class="col-4">
            <img src="headphones.jpg">
            <h4>TurtleBeach gaming headphones</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$350.00</p>
        </div>
        <div class="col-4">
            <img src="gpu.jpg">
            <h4>Nvidia RTX 3090 GPU</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
            </div>
            <p>$1350.00</p>
        </div>
        <div class="col-4">
            <img src="case.jpg">
            <h4>CoolerMaster PC case tower</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$250.00</p>
        </div>
    </div>
</div>
<!----offers-->
<div class="offer">
    <div class="row">
        <div class="col-2">   
            <img src="exclusive.png" class="offer-img">
        </div>
        <div class="col-2">
            <p>Exclusively available on Macrocenter</p>
            <h1>ThreadRippdPC</h1>
            <small>The ThreadRippdPC is built with Ryzen ThreadRipper core, 2 DDR4 32GB Corsair vengance RAM sticks, 4TB SSD, and the ultra powerful Nvidia RTX 3090Ti with liquid cooling and surround RGB  lighting. Built to shred.</small>
            <a href="" class="btn">Buy Now &#10148;</a>
        </div>
    </div>
</div>  

<!---Testimonials-->
<div class="testimonial">
    <div class="small-container">
        <div class="row">
            <div class="col-3">
                <i class="fa fa-quote-left"></i>
                <p>Macrocentre helped us build a PC that is as good as it can get and did not empty the golden bank.</p>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <img src="user1.jpg">
                <h3>Tyrion Lannister</h3>

            </div>
            <div class="col-3">
                <i class="fa fa-quote-left"></i>
                <p>Macrocentre is a PC fan's Gotham. Absolute heaven!</p>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <img src="user2.jpg">
                <h3>Bruce Wayne</h3>

            </div>
            <div class="col-3">
                <i class="fa fa-quote-left"></i>
                <p>Macrocentre is the reason behind my inventions and popular creation: Chitti Robo.</p>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <img src="user3.jpg">
                <h3>Dr.Vaseegaran</h3>

            </div>
        </div>
    </div>
</div>
<!---brands--->
<div class="brands">
    <div class="small-container">
        <div class="row">
            <div class="col-5">
                <img src="brand1.png">
            </div>
            <div class="col-5">
                <img src="brand2.png">
            </div>
            <div class="col-5">
                <img src="brand3.png">
            </div>
            <div class="col-5">
                <img src="brand4.png">
            </div>
            <div class="col-5">
                <img src="brand5.png">
            </div>
        </div>
    </div>
</div>
<!---footer-->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col1">
                <h3>Satisfaction Guaranteed</h3>
                <p>We guarantee your satisfaction on every product.</p>
            </div>
            <div class="col1">
                <h3>Service & Repair</h3>
                <img src="logo.png" width="200px">
                <p>How can we help?</p>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <h2>Customer Service</h2>
                <ul>
                    <li><a href="#">Track</a></li>
                    <li><a href="#">Return</a></li>
                    <li><a href="#">Service</a></li>
                </ul>
            </div>
            <div class="col1">
                <h2>In-demand & Tech</h2>
                <ul>
                    <li><a href="#">Refurbished Deals</a></li>
                    <li><a href="#">Close Outs</a></li>
                    <li><a href="#">Open Box</a></li>
                    <li><a href="#">Tech Support</a></li>                           
                </ul>
            </div>
        </div>
        </p>

    </div>
</div>

</body>