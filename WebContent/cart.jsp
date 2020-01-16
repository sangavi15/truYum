<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cart</title>
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body>
    <header> <span id="truYum">truYum</span> <img id="image-img"
        src="images/truyum-logo-light.png" width="40" height="40" /> <nav> <a class="link"
        href="ShowMenuItemListCustomer">Menu</a> <a id="link" href="ShowCart">Cart</a> </nav> </header>
    <span id="menu-heading">Cart</span>
    <c:if test="${removeCartItemStatus==true }">
        <span id="notification">Item Removed From Cart Successfully</span>
    </c:if>
    <c:set var="cart" value="${cart}"></c:set>
    <table class="table">
        <col width="150px"></col>
        <col width="100px"></col>
        <col width="75px"></col>
        <col width="75px"></col>
        <tr>
            <th align="left">Name</th>
            <th align="left">Free Delivery</th>
            <th align="right">Price</th>
        </tr>
        <c:forEach items="${menuItem }" var="menuItem">
            <tr>
                <td align="left">${menuItem.getName()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="right">${menuItem.getPrice()}</td>

                <td align="center"><a href="RemoveCart?menuItemId=${menuItem.getId()}">Delete
                </a></td>
            </tr>
        </c:forEach>
        <tr>
            <th></th>
            <th align="left">Total</th>
            <th align="right">Rs.${cart.getTotal()}</th>
        </tr>
    </table>
<footer> <span id="copy-right">Copyright &copy; 2019</span> </footer>
</body>
</html>