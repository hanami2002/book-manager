<%-- 
    Document   : bookdetail
    Created on : Jun 10, 2023, 1:20:16 AM
    Author     : Hanami
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết sách</title>
    <%--<jsp:useBean id="userLoader" class="dao.AccountDAO" scope="request"></jsp:useBean>--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .book-info {
            padding: 20px;
        }

        .review-section {
            padding: 20px;
            height: 300px;
            overflow-y: auto;
        }

        .review {
            margin-bottom: 20px;
        }

        .review .review-image {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 50%;
            margin-right: 10px;
        }
        .img{
            height: 260px;
            aspect-ratio: 6/9;
            object-fit: cover;
        }
        .detail{
            font-weight: bolder;
        }
    </style>

    <body>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="user-home">Trang chủ</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="history">Lịch sử đặt mua</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Đăng xuất</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-6 book-info">
                    <h2 class="detail">${book.tieude}</h2>
                    <img src="${book.anhbia}" alt="Book Cover" class="img">
                    <p>Tác giả: <span class="detail">${book.tacgia}</span></p>
                    <p>Thể loại: <span class="detail">${book.theloai}</span></p>
                    <p>Mô tả: ${book.mota}</p>
                    <p>Ngày xuất bản: <span class="detail">${book.phathanh}</span></p>
                    <p>Số lượng đã bán: <span class="detail">${book.daban}</span></p>
                    <form action="./book-detail?action=buy" method="POST">
                        <input style="display: none" name="bid" value="${book.bid}">
                        <input style="height: 38px; border-radius: 4px; outline:none; display: inline-block" name="amount" placeholder="Số lượng" max="100" type="number" required>
                        <button class=" btn btn-primary" type="submit">Đặt hàng</button>
                    </form>
                </div>
                <div class="col-md-6 review-section">
                    <h2>Đánh giá và nhận xét</h2>
                    <div class="reviews">
                        <c:forEach items="${comments}" var="o">
                            <div class="review">
                                <div class="d-flex">

                                    <div>
                                        <h5>${o.username}</h5>
                                        <p class="rating">Đánh giá: ${o.danhgia}*</p>
                                    </div>
                                </div>
                                <p class="comment">Nhận xét: ${o.nhanxet}</p>
                            </div>
                        </c:forEach>
                        <!-- Thêm các đánh giá và nhận xét khác tại đây -->
                    </div>
                </div>
            </div>
            <form class="mt-4" action="./book-detail?action=comment" method="POST">
                <input style="display: none" name="bid" value="${book.bid}">
                <div class="form-group">
                    <label for="comment">Nhận xét:</label>
                    <textarea class="form-control" id="comment" name="comment" rows="3"></textarea>
                </div>
                <div class="form-group">
                    <label for="rating">Đánh giá:</label>
                    <select class="form-control" id="rating" name="rating">
                        <option value="1">1 sao</option>
                        <option value="2">2 sao</option>
                        <option value="3">3 sao</option>
                        <option value="4">4 sao</option>
                        <option value="5" selected>5 sao</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Gửi</button>
            </form>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>