<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fashion Hub</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>

<div class="header">
    <h1>Fashion Hub</h1>
    <p>Online Shopping for model Dresses</p>
</div>

<div class="container">

    <div class="card">
        <img src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b">
        <h2>Red Party Dress</h2>
        <p>₹1999</p>

        <form action="buy" method="post">
            <input type="hidden" name="dress" value="Red Party Dress">
            <input type="hidden" name="price" value="1999">
            <button type="submit">Buy Now</button>
        </form>
    </div>

    <div class="card">
        <img src="https://images.unsplash.com/photo-1496747611176-843222e1e57c">
        <h2>Summer Floral Dress</h2>
        <p>₹1499</p>

        <form action="buy" method="post">
            <input type="hidden" name="dress" value="Summer Floral Dress">
            <input type="hidden" name="price" value="1499">
            <button type="submit">Buy Now</button>
        </form>
    </div>

    <div class="card">
        <img src="https://images.unsplash.com/photo-1483985988355-763728e1935b">
        <h2>Casual Modern Dress</h2>
        <p>₹1799</p>

        <form action="buy" method="post">
            <input type="hidden" name="dress" value="Casual Modern Dress">
            <input type="hidden" name="price" value="1799">
            <button type="submit">Buy Now</button>
        </form>
    </div>

</div>

<%
String dress = (String) request.getAttribute("dress");
String price = (String) request.getAttribute("price");

if(dress != null){
%>

<div class="success">
    <h2>Order Successful 🎉</h2>
    <p>You purchased: <b><%= dress %></b></p>
    <p>Amount Paid: ₹<%= price %></p>
</div>

<%
}
%>

</body>
</html>
