<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Quản lý thư viện</title>
        <jsp:useBean id="theloai" scope="page" class="dao.TheLoaiDAO" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script >
            function deletepBook(bid) {
                if (confirm("Do you want to delete?")) {
                    window.location = "delete-book?bid=" + bid;
                }
            }
        </script>
    </head>
    <body>
        <div class="container">
            <h2>Quản lý thư viện</h2>
            <div class="mb-3">
                <a href="add.jsp"><button class="btn btn-primary" onclick="addBook()">Add Book</button></a>
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
                    <c:forEach var="b" items="${listB}">
                        <tr>
                            <td>${b.getTieude()}</td>
                            <td>${b.getTacgia()}</td>
                            
                            <td>${theloai.getTheLoaiById(b.getTheloai()).getTheloai()}</td>
                            <td>${b.getPhathanh()}</td>
                            <td>${b.getSotrang()}</td>
                            <td>${b.getDaban()}</td>
                            <c:if test="${sessionScope.account!=null}">
                                <td>
                                    <a href="view?bid=${b.getBid()}"><button class="btn btn-info" >Xem</button></a>
                                    <button onclick="deletepBook(${b.getBid()})" class="btn btn-danger">Xóa</button>
                                </td>
                            </c:if>
                        </tr>
                    </c:forEach>
                        <tr>
                            <td>--</td>
                            <td>--</td>
                            <td>--</td>
                            <td>--</td>
                            <td>--</td>
                            <td>--</td>
                            
                        </tr>
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

