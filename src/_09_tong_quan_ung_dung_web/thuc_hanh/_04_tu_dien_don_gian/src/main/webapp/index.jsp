<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<head>
    <title>Simple Dictionary</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        *{
            font-family: Arial,Helvetica,sans-serif;
        }
    </style>
</head>
<body>
<h2>Vietnamese Dictionary</h2>

<form method="get" action="/translate">
    <input type="text" name="txtSearch" placeholder="Enter your word: "/><br><br>
<%--    OUTPUT: <input type="text" name="result" id="result" placeholder="Here is result" readonly/><br><br>--%>
    <input type="submit" id="submit" value="Search"/>
</form>
</body>
</html>