<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import= "java.sql.*" %>


<%
    String username=session.getAttribute("username").toString();
    if(session.getAttribute("total").toString()!=null)
    {
        String total =session.getAttribute("total").toString();
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/macrocenter","root","qwertyuiop23");
        String query1 ="SELECT * FROM users where username=?";
        PreparedStatement stm = con.prepareStatement(query1);
        stm.setString(1,username);
        ResultSet rs = stm.executeQuery();
        if(rs.next())
        {
            String email = rs.getString(2);
            String add =rs.getString(4);
            stm.close();
            String query= "INSERT INTO userorder(username,email,address,total) VALUES(?,?,?,?)";
            PreparedStatement st =con.prepareStatement(query);
            st.setString(1,username);
            st.setString(2,email);
            st.setString(3,add);
            st.setString(4,total);
            st.executeUpdate();
            session.removeAttribute("total");

        }
        else{
            out.println("error");
        }
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
    <h1>Your order has been placed!</h1>
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
