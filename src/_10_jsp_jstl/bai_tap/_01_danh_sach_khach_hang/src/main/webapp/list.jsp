<%--
  Created by IntelliJ IDEA.
  User: MangDunh
  Date: 6/28/2021
  Time: 10:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách khách hàng</title>
    <style>
        body {
            display: block;
            text-align: -webkit-center;
        }

        table {
            width: 70%;
            text-align: center;
        }
        th,tr,td{
            border: 1px solid #8a8a8a;
        }
        img{
            width: 100px;
            height: 100px;
        }
    </style>
</head>
<body>
<c:if test="${empty list}">
    <h3>Danh sách khách hàng rỗng</h3>
</c:if>
<c:if test="${not empty list}">
    <table cellspacing="0">
        <thead>
        <th width="25%">Tên</th>
        <th width="25%">Ngày sinh</th>
        <th width="25%">Địa chỉ</th>
        <th width="25%">Ảnh</th>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="customer">
            <tr>
                <td>${customer.name}</td>
                <td>${customer.dateOfBirth}</td>
                <td>${customer.address}</td>
                <td><img src="${customer.image}" alt=""></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
