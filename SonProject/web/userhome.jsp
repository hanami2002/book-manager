<%-- 
    Document   : userhome
    Created on : Jun 10, 2023, 1:20:09 AM
    Author     : Hanami
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Danh sách sách</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    .book-card {
      margin-bottom: 20px;
    }
    img{
        width: 100%;
    height: 300px;
    /* margin-left: 10px; */
    /* margin-right: 10px; */
    padding-right: 10px;
    padding-left: 10px;
    padding-top: 10px;
    }
    .card-title {
    height: 68px;
    text-overflow: ellipsis;
    overflow: hidden;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
    }
    .card-text {
    height: 42px !important;
    text-overflow: ellipsis;
    overflow: hidden;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
    }
  </style>
</head>
<body>
   <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <a class="navbar-brand" href="user-home">Trang chủ</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="history">Xem lịch sử đặt mua</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/logout">Đăng xuất</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="container">
    <h2>Danh sách</h2>
    <div class="row">          
           <c:forEach var="o" items="${books}">
          <div class="col-md-3 book-card">   
          <div class="card">
          <img src="${o.anhbia}" alt="Book Cover" class="card-img-top">
          <div class="card-body">
            <h5 class="card-title">${o.tieude}</h5>
            <p class="card-text">${o.tacgia}</p>
            <a href="book-detail?bid=${o.bid}" class="btn btn-primary">Xem chi tiết</a>
          </div>
        </div>  
        </div>
          </c:forEach>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>