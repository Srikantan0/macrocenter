<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/macrocenter","root","qwertyuiop23");
if(request.getParameter("login")!=null){
String query="select * from users where username= ? and password= ?";
try
{
PreparedStatement st = con.prepareStatement(query);
st.setString(1, request.getParameter("password"));
st.setString(2, request.getParameter("username"));
ResultSet rs = st.executeQuery();
if(rs.next())
{
    session.setAttribute("username",request.getParameter("username"));
    response.sendRedirect("home2.jsp");
}
else
{
    out.println("sorry you are not registered");
}
}
catch(Exception e)
{
e.printStackTrace();
}
}
if(request.getParameter("data")!=null){
PreparedStatement st = con.prepareStatement("insert into users values(?,?,?,?)");
st.setString(1, request.getParameter("username"));
st.setString(2, request.getParameter("email"));
st.setString(3, request.getParameter("password"));
st.setString(4, request.getParameter("address"));
st.executeUpdate();
st.close();
con.close();
out.println("<body>Successfully Registered");
    session.setAttribute("username",request.getParameter("username"));
out.println("<a href='home2.jsp' class='btn'>home</a>");
out.println("</body>");
out.close();
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
<!---js for form-->
<script>
var a = document.getElementById("LoginForm");
var b = document.getElementById("RegForm");

 function register()
{
a.style.transform = "translateX(0px)";
b.style.transform = "translateX(0px)";
;
}
function login()
{
a.style.transform = "translateX(300px)";
b.style.transform = "translateX(300px)";

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
<li><a href="">Sign-in/Sign-up</a></li>
</ul>
</nav>
<a href="cart.jsp"><img src="cart.png" width="30px" height:"30px"></a>
</div>
</div>
<!---account page-->
<div class="account-page">
<div class="container">
<div class="row">
<div class="col-2">
<img src="bgimg.jpg" width="100%">
</div>
<div class="col-2">
<div class="form-container">
<div class="form-btn">
<span onclick="login()">Login</span>
<span onclick="register()">Register</span>
<form id="LoginForm" method="POST">
<input type="text" placeholder="USERNAME" name="username">
<input type="password" placeholder="PASSWORD" name="password">
<button type="submit" class="btn" name="login">Login</button>
</form>
<form id="RegForm" method="GET">
<input type="text" placeholder="USERNAME" name="username">
<input type="text" placeholder="EMAIL" name="email">
<input type="password" placeholder="PASSWORD" name="password">
<input type="text" placeholder="ADDRESS" name="address">
<button type="submit" class="btn" name="data">Register</button>
</form>
</div>
</div>
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
</html>

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
<!---js for form-->
<script>
var a = document.getElementById("LoginForm");
var b = document.getElementById("RegForm");

 function register()
{
a.style.transform = "translateX(0px)";
b.style.transform = "translateX(0px)";

 }
function login()
{
a.style.transform = "translateX(300px)";
b.style.transform = "translateX(300px)";

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
<li><a href="">Sign-in/Sign-up</a></li>
</ul>
</nav>
<img src="cart.png" width="30px" height:"30px">
</div>
</div>
<!---account page-->
<div class="account-page">
<div class="container">
<div class="row">
<div class="col-2">
<img src="bgimg.jpg" width="100%">
</div>
<div class="col-2">
<div class="form-container">
<div class="form-btn">
<span onclick="login()">Login</span>
<span onclick="register()">Register</span>
<form id="LoginForm">
<input type="text" placeholder="USERNAME">
<input type="password" placeholder="PASSWORD">
<button type="submit" class="btn">Login</button>
</form>
<form id="RegForm">
<input type="text" placeholder="USERNAME" width="320px">
<input type="text" placeholder="EMAIL">
<input type="password" placeholder="PASSWORD">
<button type="submit" class="btn">Login</button>
</form>
</div>
</div>
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
</html>