<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import= "java.sql.*" %>

<%

    if(request.getParameter("total")!=null)
    {
        String total = request.getParameter("total");
        session.setAttribute("total",total);
    }
    
%>
<html>
<head>
        <title>Products- Macrocenter</title>
        <link rel="stylesheet" href="styles.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
</head>

<script>
    function multiply()
    {
        a = document.getElementById("intel").value;
        b = 375;
        document.getElementById("result1").innerHTML=a*b;
        c = document.getElementById("monitor").value;
        d = 250;
        document.getElementById("result2").innerHTML=c*d;
        e = document.getElementById("storage").value;
        f = 450;
        document.getElementById("result3").innerHTML=e*f;
        g = document.getElementById("ram").value;
        h = 150;
        document.getElementById("result4").innerHTML=g*h;
        i = document.getElementById("ryzen").value;
        j = 375;
        document.getElementById("result5").innerHTML=i*j;
        k = document.getElementById("motherboard").value;
        l = 250;
        document.getElementById("result6").innerHTML=k*l;
        /second half/
        m = document.getElementById("laptop").value;
        n = 2250;
        document.getElementById("result7").innerHTML=m*n;
        o = document.getElementById("keyboard").value;
        p = 150;
        document.getElementById("result8").innerHTML=o*p;
        q = document.getElementById("mouse").value;
        r = 375;
        document.getElementById("result9").innerHTML=q*r;
        s = document.getElementById("headphones").value;
        t = 350;
        document.getElementById("result10").innerHTML=s*t;
        u = document.getElementById("gpu").value;
        v = 1350;
        document.getElementById("result11").innerHTML=u*v;
        w = document.getElementById("case").value;
        x = 250;
        document.getElementById("result12").innerHTML=w*x;
        /---PC---/
        y = document.getElementById("ThreadRippdPC").value;
        z = 2375;
        document.getElementById("result13").innerHTML=y*z;
        aa = document.getElementById("pc1").value;
        bb = 1650;
        document.getElementById("result14").innerHTML=aa*bb;
        cc = document.getElementById("pc2").value;
        dd = 1750;
        document.getElementById("result15").innerHTML=cc*dd;
        ee = document.getElementById("pc3").value;
        ff = 2250;
        document.getElementById("result16").innerHTML=ee*ff;
        gg = a*b + c*d + e*f + g*h + i*j + k*l + m*n + o*p + q*r + s*t + u*v + w*x + y*z + aa*bb + cc*dd + ee*ff;
        document.getElementById("result17").innerHTML=gg;
        var xhr  = new XMLHttpRequest();
        xhr.open("Get","cart.jsp?total="+gg,true)
        xhr.send()
    }
</script>
<body>
    <div class="container">
        <div class="navbar">
            <div class="logo">
                <a href="home.html"><img src="logo.png" width="200px"></a>
            </div>
                <nav>
                <ul>
                    <li><a href="products.html">Products</a></li>
                    <li><a href="login.jsp">Sign-in/Sign-up</a></li>
                </ul>
             </nav>
             <img src="cart.png" width="30px" height:"30px">
            </div>
        </div>   
    </div>
<!---cart items-->
<form></form>
<div class="small-container cart-page">
    <table>
        <tr>
            <th>Product</th>
            <th>Quantity</th>
            <th>Subtotal</th>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="core.png" width="20%">
                    <div>
                        <p>intel Core i7</p>
                        <small>$375.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="intel" name="intel"></td>
            <td>$<span id="result1">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="monitor.jpg" width="20%">
                    <div>
                        <p>HP OLED 4k 240Hz Montior</p>
                        <small>$250.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="monitor" name="monitor"></td>
            <td>$<span id="result2">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="storage.png" width="20%">
                    <div>
                        <p>SSD and HDD</p>
                        <small>$450.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="storage" name="storage"></td>
            <td>$<span id="result3">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="ram.jpg" width="20%">
                    <div>
                        <p>TridentZ RAM sticks</p>
                        <small>$150.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="ram" name="ram"></td>
            <td>$<span id="result4">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="ryzen.jpg" width="20%">
                    <div>
                        <p>Ryzen 7 core</p>
                        <small>$375.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="ryzen" name="ryzen"></td>
            <td>$<span id="result5">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="mboard.jpg" width="20%">
                    <div>
                        <p>GIGABYTE motherboard</p>
                        <small>$250.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="motherboard" name="mboard"></td>
            <td>$<span id="result6">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="lap.png" width="20%">
                    <div>
                        <p>Alienware laptop-i9 9900k,RTX30 series</p>
                        <small>$2250.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="laptop" name="laptop"></td>
            <td>$<span id="result7">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="keyb.jpeg" width="20%">
                    <div>
                        <p>Mechanical Keyboard 60%</p>
                        <small>$150.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="keyboard" name="keyboard"></td>
            <td>$<span id="result8">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="mouse.jpg" width="20%">
                    <div>
                        <p>Logitench G series gaming mouse</p>
                        <small>$375.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="mouse" name="mouse"></td>
            <td>$<span id="result9">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="headphones.jpg" width="20%">
                    <div>
                        <p>Turtlebeach gaming headphones</p>
                        <small>$350.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="headphones" name="headphones"></td>
            <td>$<span id="result10">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="gpu.jpg" width="20%">
                    <div>
                        <p>Nvidia RTX 30 Series GPU</p>
                        <small>$1350.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="gpu" name="gpu"></td>
            <td>$<span id="result11">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="case.jpg" width="20%">
                    <div>
                        <p>Coolermaster PC tower case</p>
                        <small>$250.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="case" name="case"></td>
            <td>$<span id="result12">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="exclusive.png" width="20%">
                    <div>
                        <p>ThreadRippdPC</p>
                        <small>$2375.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="ThreadRippdPC" name="pc1"></td>
            <td>$<span id="result13">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="pc1.jpg" width="20%">
                    <div>
                        <p>Intel PRE-BUILD</p>
                        <small>$1650.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="pc1" name="pc2"></td>
            <td>$<span id="result14">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="pc2.jpg" width="20%">
                    <div>
                        <p>AMD PRE-BUILD</p>
                        <small>$1750.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="pc2" name="pc3"></td>
            <td>$<span id="result15">00</span></td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="pc3.jpg" width="20%">
                    <div>
                        <p>ShredderPC</p>
                        <small>$2250.00</small>
                        <a href="">Remove</a>
                    </div>
                </div>
            </td>
            <td style="height:100px;width:200px"><input type="number" id="pc3" name="pc4"></td>
            <td>$<span id="result16">00</span></td>
            
        </tr>    
        <tr>
            <td><td><div>Total:</div><td>$<span id="result17">00</span></td>
        </tr>
    </table>
    <button onclick="multiply()"class="btn" id="smth">Calculate</button>
    <button class="btn" onclick="window.location.href='checkout.jsp'" name="checkout">Checkout</button>

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
</html>