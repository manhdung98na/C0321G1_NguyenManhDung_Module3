<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Kết quả</title>
    <style>
        body{
            display: block;
            text-align: -webkit-center;
            font-size: 20px;
        }
    </style>
</head>
<body>
<c:if test="${not empty requestScope['errorMessage']}">
    <c:out value="${requestScope['errorMessage']}"/>
</c:if>
<c:if test="${empty requestScope['errorMessage']}">
    <h3>RESULT</h3>
    <hr>
    <c:out value="${requestScope['firstOperand']}"/>
    <c:out value="${requestScope['operator']}"/>
    <c:out value="${requestScope['secondOperand']}"/> =
    <c:out value="${requestScope['result']}"/>
</c:if>
</body>
</html>
