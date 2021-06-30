<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Thêm mới người dùng</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>

    </style>
</head>
<body>
<div class="container">
    <c:if test="${not empty requestScope['error']}">
        <form method="post" action="/users" class="text-center">
            <input hidden name="action" value="home">
            <div class="alert alert-warning alert-dismissible fade show mt-4" role="alert">
                <strong>Tạo mới thất bại!</strong><br>
                <span style="color: red; font-weight: bold; font-style: italic">${requestScope['error']}</span>
                <button type="submit" class="close" aria-label="Close">
                    <span style="text-decoration: none; font-size: 20px">x</span>
                </button>
            </div>
        </form>
    </c:if>
    <c:if test="${empty requestScope['error']}">
        <form method="post" action="/users" class="text-center">
            <input hidden name="action" value="create">
            <h2 class="m-3">Thêm mới người dùng</h2>
            <table class="table table-borderless">
                    <%--input name--%>
                <div class="form-group">
                    <tr>
                        <td>
                            <label for="createName" class="d-inline">Name</label>
                        </td>
                        <td>
                            <input type="text" class="form-control d-inline" id="createName" name="name" required>
                        <td>
                    </tr>
                </div>
                    <%--input email--%>
                <div class="form-group">
                    <tr>
                        <td>
                            <label for="createEmail" class="d-inline">Email</label>
                        </td>
                        <td>
                            <input type="email" class="form-control d-inline" id="createEmail" name="email" required>
                        <td>
                    </tr>
                </div>
                    <%--input country--%>
                <div class="form-group">
                    <tr>
                        <td>
                            <label for="createCountry" class="d-inline">Country</label>
                        </td>
                        <td>
                            <input type="text" class="form-control d-inline" id="createCountry" name="country"
                                   required>
                        <td>
                    </tr>
                </div>

            </table>
            <a href="/users" type="button" class="btn btn-secondary">Back</a>
            <button type="submit" class="btn btn-success">Submit</button>
        </form>
    </c:if>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>