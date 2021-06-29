<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Chi tiết sản phẩm</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        th{
            width: 15%;
        }
        td{
            width: 85%;
        }
        caption{
            caption-side: top;
            font-weight: bold;
            font-size: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <form method="get" action="/product" class="text-center">
        <table class="table align-middle table-striped table-bordered mt-4">
            <caption>Chi tiết sản phẩm</caption>
            <tr class="">
                <th class="text-center table-dark">ID</th>
                <td class="text-center">${requestScope["productDetail"].getId()}</td>
            </tr>
            <tr>
                <th class="text-center table-dark ">Tên SP</th>
                <td class="text-center">${requestScope["productDetail"].getName()}</td>
            </tr>
            <tr>
                <th class="text-center table-dark ">Giá tiền</th>
                <td class="text-center">${requestScope["productDetail"].getPrice()}</td>
            </tr>
            <tr>
                <th class="text-center table-dark ">Miêu tả</th>
                <td class="text-center">${requestScope["productDetail"].getDescription()}</td>
            </tr>
            <tr>
                <th class="text-center table-dark ">Hãng</th>
                <td class="text-center">${requestScope["productDetail"].getManufacturer()}</td>
            </tr>
        </table>
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