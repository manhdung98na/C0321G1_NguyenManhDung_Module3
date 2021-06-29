<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Thay đổi thông tin sản phẩm</title>
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
    <form method="post" action="" class="text-center">
        <h2 class="m-3">Thay đổi thông tin sản phẩm</h2>
        <table class="table table-borderless">
            <div class="form-group">
                <tr>
                    <td>
                        <label for="editId" class="d-inline">ID</label>
                    </td>
                    <td>
                        <input type="text" class="form-control d-inline" name="id" id="editId" readonly
                               value="${requestScope['product'].id}">
                    <td>
                </tr>
            </div>
            <div class="form-group">
                <tr>
                    <td>
                        <label for="editName" class="d-inline">Name</label>
                    </td>
                    <td>
                        <input type="text" class="form-control d-inline" id="editName" name="name"
                               value="${requestScope['product'].name}">
                    <td>
                </tr>
            </div>
            <div class="form-group">
                <tr>
                    <td>
                        <label for="editPrice" class="d-inline">Price</label>
                    </td>
                    <td>
                        <input type="number" class="form-control d-inline" id="editPrice" name="price"
                               value="${requestScope['product'].price}">
                    <td>
                </tr>
            </div>
            <div class="form-group">
                <tr>
                    <td>
                        <label for="editDescription" class="d-inline">Description</label>
                    </td>
                    <td>
                        <input type="text" class="form-control d-inline" id="editDescription" name="description"
                               value="${requestScope['product'].description}">
                    <td>
                </tr>
            </div>
            <div class="form-group">
                <tr>
                    <td>
                        <label for="editManufacturer" class="d-inline">Manufacturer</label>
                    </td>
                    <td>
                        <input type="text" class="form-control d-inline" id="editManufacturer" name="manufacturer"
                               value="${requestScope['product'].manufacturer}">
                    <td>
                </tr>
            </div>
        </table>
        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="/product" type="button" class="btn btn-secondary">Back</a>
    </form>
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