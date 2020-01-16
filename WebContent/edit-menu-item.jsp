<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Edit Menu Item</title>
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<script src="js/script.js"></script>
</head>
<body>
    <c:set var="menuItem" value="${menuItem }"></c:set>
    <header> <span id="truYum">truYum</span> <img id="image-img"
        src="images/truyum-logo-light.png" width="40" height="40" /> <nav> <a class="link"
        href="ShowMenuItemListAdmin">Menu</a> </nav> </header>
    <span id="menu-heading">Edit Menu Item</span>
    <form action="EditMenuItem" method="post" name="menuItemForm"
        onsubmit="return validateMenuItemForm()">
        <input type="hidden" name="id" value="${menuItem.getId()}" />
        <table>
            <tr>
                <th align="left"><label class="grey" for="name">Name</label></th>
            </tr>
            <tr>
                <td colspan="4"><input type="text" name="name" value="${menuItem.getName()}"
                    id="name" autocomplete="off" /></td>
            </tr>

            <tr>
                <th align="left"><label class="grey" for="price">Price (Rs.)</label></th>
                <th align="left"><label class="grey" for="active">Active</label></th>
                <th align="left"><label class="grey" for="dol">Date of Launch</label></th>
                <th align="left"><label class="grey" for="cat">Category</label></th>
            </tr>
            <tr>
                <td><input type="text" name="price" id="price" autocomplete="off"
                    value="${menuItem.getPrice()}"
                    placeholder="                                        97" /></td>
                <td><c:choose>
                        <c:when test="${menuItem.isActive()==true}">
                            <input type="radio" value="Yes" name="active" checked="checked" />Yes<input
                                type="radio" value="No" name="active" />No
                    </c:when>
                        <c:otherwise>
                            <input type="radio" value="Yes" name="active" />Yes<input type="radio"
                                value="No" name="active" />No
                     </c:otherwise>
                    </c:choose></td>

                <td><f:formatDate value="${menuItem.getDateOfLaunch()}" pattern="dd/MM/yyyy"
                        var="dateOfLaunch" /> <input type="text" size="20" name="dateOfLaunch"
                    id="dol" value="${dateOfLaunch}" autocomplete="off" placeholder="27/04/2022" /></td>
                <td><select name="category">
                        <option value="${menuItem.getCategory()}">${menuItem.getCategory()}</option>
                        <option value="starters">Starters</option>
                        <option value="main course">Main Course</option>
                        <option value="dessert">Dessert</option>
                        <option value="drinks">Drinks</option>
                </select></td>
            </tr>
            <tr>
                <td><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">
                            <input type="checkbox" name="freeDelivery" value="Yes" checked="checked" />FreeDelivery
            </c:when>
                        <c:otherwise>
                            <input type="checkbox" name="freeDelivery" value="No" />FreeDelivery
            </c:otherwise>
                    </c:choose></td>

            </tr>
            <tr>
                <td colspan="4"><input type="submit" value="Save" name="submit" id="submit" /></td>
            </tr>
        </table>
    </form>
    <footer> <span id="copy-right">Copyright &copy; 2019</span> </footer>
</body>
</html>