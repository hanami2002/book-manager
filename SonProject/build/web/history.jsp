<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : history
    Created on : Jun 10, 2023, 7:09:45 PM
    Author     : Hanami
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head><jsp:useBean id="book" scope="page" class="dao.BookDAO" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lịch sử đặt mua</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
             <a href="user-home"><button class="btn btn-primary">Quay về trang chủ</button></a>
            <h1>Lịch sử đặt mua</h1>

            <table class="table">
                <thead>
                    <tr>

                        <th>Tên sách</th>
                        <th>Tác giả</th>
                        <th>Ngày đặt mua</th>
                        <th>Số lượng</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="o" items="${listO}">
                        <tr>
                            <td>${book.getBookById(o.getBid()).getTieude()}</td>
                            <td>${book.getBookById(o.getBid()).getTacgia()}</td>
                            
                            <td>${o.getNgaymua()}</td>
                            <td>${o.getSoluong()}</td>
                            
<td>
                    <button class="btn btn-danger" onclick="deleteOrder(${o.getOid()})">Xóa</button>
                    </td>
                    </tr>
                </c:forEach>


                </tbody>
            </table>
        </div>

        <script>
            function deleteOrder(oid) {
                if(confirm('ban co muon huy dat mua'+oid+'?')){
                    window.location='delete-order?oid='+oid;
                }
            }
        </script>
    </body>
</html>

