<%--
  Created by IntelliJ IDEA.
  User: MangDunh
  Date: 6/27/2021
  Time: 1:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<body>
<form action="/calculate" method="post">
    Mô tả sản phẩm:&nbsp<input name="mo-ta" value="Đây là mô tả sản phẩm" readonly><br><br>
    Giá niêm yết:&nbsp<input name="list-price" type="number" placeholder="Nhập giá niêm yết"><br><br>
    Tỷ lệ chiết khấu:&nbsp<input name="discount-percent" type="number" placeholder="Tỷ lệ chiết khấu" min="0" max="100" maxlength="10"> phần trăm<br><br>
    <button type="submit">Calculate</button> <hr>
</form>
</body>
</html>
