<%-- 
    Document   : adminhome
    Created on : Jun 9, 2023, 7:39:51 PM
    Author     : Hanami
--%>
<!--style="
    width: 100%;
    height: 300px;
    /* margin-left: 10px; */
    /* margin-right: 10px; */
    padding-right: 10px;
    padding-left: 10px;
    padding-top: 10px;
"-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Quản lý thư viện</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h2>Quản lý thư viện</h2>
            <div class="mb-3">
                <button class="btn btn-primary" onclick="addBook()">Add Book</button>
                <a href="/logout"><button class="btn btn-primary" >Đăng Xuất</button></a>
            </div>

            <table class="table">
                <thead class="thead-light">
                    <tr>
                        <th>Tiêu đề</th>
                        <th>Tác giả</th>
                        <th>Thể loại</th>
                        <th>Ngày phát hành</th>
                        <th>Số trang</th>
                        <th>Số lượng đã bán</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Book 1</td>
                        <td>Author 1</td>
                        <td>Thể loại 1</td>
                        <td>2022-01-01</td>
                        <td>200</td>
                        <td>100</td>
                        <td>
                            <button class="btn btn-info" onclick="viewBook()">Xem</button>
                            <button class="btn btn-danger" onclick="deleteBook()">Xóa</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Book 2</td>
                        <td>Author 2</td>
                        <td>Thể loại 2</td>
                        <td id="#date">2022-02-01</td>
                        <td>150</td>
                        <td>50</td>
                        <td>
                            <button class="btn btn-info" onclick="viewBook()">Xem</button>
                            <button class="btn btn-danger" onclick="deleteBook()">Xóa</button>
                        </td>
                    </tr>
                    <!-- Thêm các dòng khác tương tự -->
                </tbody>
            </table>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script>


        </script>
    </body>
</html>

