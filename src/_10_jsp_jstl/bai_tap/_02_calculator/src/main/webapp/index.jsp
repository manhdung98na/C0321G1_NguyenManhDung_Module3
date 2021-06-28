<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/6/2021
  Time: 5:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
    <style>
        body{
            display: block;
            text-align: -webkit-center;
        }
    </style>
</head>
<body>
<h2>Simple Calculator</h2>
<form action="/calculate" method="post">
    <fieldset style="width: 400px">
        <legend>Calculator</legend>
        <table width="100%">
            <tr>
                <td width="30%">First operand</td>
                <td width="70%"><input name="first-operand" type="number" required style="width: 100%"></td>
            </tr>
            <tr>
                <td width="30%">Operator</td>
                <td  width="70%">
                    <select name="operator"  style="width: 100%">
                        <option value="+">Addition (+)</option>
                        <option value="-">Subtraction (-)</option>
                        <option value="*">Multiplication (*)</option>
                        <option value="/">Division (/)</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td width="30%">Second operand</td>
                <td width="70%"><input name="second-operand" type="number" required style="width: 100%"></td>
            </tr>
            <tr style="text-align: center">
                <td colspan="2">
                    <button type="submit">Calculate</button>
                </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
