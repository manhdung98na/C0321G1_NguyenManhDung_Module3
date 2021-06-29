<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Quản lý sản phẩm</title>
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
    <c:if test="${empty productList}">
        <h1 class="text-danger text-center mt-2">DANH SÁCH SẢN PHẨM RỖNG</h1>
    </c:if>
    <c:if test="${not empty productList}">
        <div class="card mt-4">
            <div class="card-header">
                <h2 style="color: #c41f00">TRANG WEB QUẢN LÝ SẢN PHẨM</h2>
            </div>
            <div class="card-body">
                <a href="/product?action=create" type="button" class="btn btn-success card-title">
                    Create New Product
                </a>
                <h5 class="card-title">Danh sách sản phẩm</h5>
                <table class="table align-middle table-striped table-bordered mt-4">
                    <thead class="p-0 table-dark w-100">
                    <tr class="">
                        <th class=" text-center">ID</th>
                        <th class=" text-center">Tên sản phẩm</th>
                        <th class=" text-center">Giá</th>
                        <th class=" text-center">Miêu tả</th>
                        <th class=" text-center">Hãng sản xuất</th>
                        <th class=" text-center ">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items='${requestScope["productList"]}' var="product">
                        <tr class="">
                            <td class=" text-center">${product.getId()}</td>
                            <td class=" text-center">${product.getName()}</td>
                            <td class=" text-center">${product.getPrice()}</td>
                            <td class=" text-center">${product.getDescription()}</td>
                            <td class=" text-center">${product.getManufacturer()}</td>
                            <td class=" text-center">
                                <a class="btn btn-info btn-sm" href="/product?action=detail&id=${product.getId()}"
                                   role="button">Detail</a>
                                <a class="btn btn-info btn-sm" href="/product?action=edit&id=${product.getId()}"
                                   role="button">Edit</a>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-danger btn-sm" data-toggle="modal"
                                        data-target="#modalDel" onclick="sendInfoToDelete(${product.id}, '${product.name}')">
                                    Delete
                                </button>

                                <!-- Modal -->
                                <div class="modal fade" id="modalDel" tabindex="-1" role="dialog"
                                     aria-labelledby="modelTitleId" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title">Xoá sản phẩm</h5>
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <form action="/product" method="post">
                                                <input hidden name="action" value="delete">
                                                <input hidden name="id" value="" id="idDelete">
                                                <div class="modal-body">
                                                    <div class="container-fluid">
                                                        Xác nhận xoá?
                                                        <input id="nameConfirm" value="" style="border: none; outline:none; color: red" readonly>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">
                                                        Close
                                                    </button>
                                                    <button type="submit" class="btn btn-danger">Delete</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <script>
                                    function sendInfoToDelete(id, name) {
                                        document.getElementById("idDelete").value = id;
                                        document.getElementById("nameConfirm").value = name;

                                    }
                                </script>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </c:if>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
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