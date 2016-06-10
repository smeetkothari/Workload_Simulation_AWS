<%-- 
    Document   : viewCart
    Created on : Feb 11, 2016, 9:37:44 PM
    Author     : kumaran_jay
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Cart</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${!empty sessionScope.customerId}">
                <jsp:include page="menu.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="menu2.jsp"/>
            </c:otherwise>
        </c:choose>
        
        <c:choose>
            <c:when test="${!empty sessionScope.cart}">
                <h3>Your cart contains:</h3>
                <table border="1">
                    <tr>
                        <th>Name</th>
                        <th>Price</th>
                    </tr>
                    <c:forEach var="product" items="${sessionScope.cart}">
                        <tr>
                            <td>${product.productName}</td>
                            <td>${product.price}</td>
                        </tr>
                    </c:forEach>
                        <tr>
                            <td>Total</td>
                            <td>${requestScope.total}</td>
                        </tr>
                </table>
                        <br><br>
                        
                        <a href="product.htm?action=display"><< Shop More</a>
                        <a href="checkout.htm?action=checkout">Checkout >></a>
            </c:when>
            <c:otherwise>
                <h3>Oops.. your cart is empty</h3>
                <a href="product.htm?action=display">Return to Shopping</a>
            </c:otherwise>
        </c:choose>
        
    </body>
</html>
