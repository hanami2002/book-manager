<%-- 
    Document   : bookdetail
    Created on : Jun 10, 2023, 1:20:16 AM
    Author     : Hanami
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Chi tiết sách</title>
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
  </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="home.html">Trang chủ</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="lich-su-dat-mua.html">Lịch sử đặt mua</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="dang-xuat.html">Đăng xuất</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="container">
    <div class="row">
      <div class="col-md-6 book-info">
        <h2>Tiêu đề sách</h2>
        <img src="path_to_book_cover_image.jpg" alt="Book Cover" class="img-fluid">
        <p>Tên tác giả: John Doe</p>
        <p>Thể loại: Science Fiction</p>
        <p>Mô tả sách: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu elit mi. Fusce vitae laoreet nunc. Nullam euismod nibh id felis tincidunt, id rhoncus tellus euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse congue nulla ut mi dapibus efficitur.</p>
        <p>Ngày xuất bản: 2023-05-18</p>
        <p>Số lượng đặt mua: 10</p>
      </div>
      <div class="col-md-6 review-section">
        <h2>Đánh giá và nhận xét</h2>
        <div class="reviews">
          <div class="review">
            <div class="d-flex">
              
              <div>
                <h5>Người dùng 1</h5>
                <p class="rating">Đánh giá: 4 sao</p>
              </div>
            </div>
            <p class="comment">Nhận xét: Sách rất hay!</p>
          </div>
          <div class="review">
            <div class="d-flex">
              
              <div>
                <h5>Người dùng 2</h5>
                <p class="rating">Đánh giá: 5 sao</p>
              </div>
            </div>
            <p class="comment">Sách rất thú vị và ý nghĩa!</p>
          </div>
          <div class="review">
            <div class="d-flex">
              <img src="path_to_user_avatar.jpg" alt="User Avatar" class="review-image">
              <div>
                <h5>Người dùng 3</h5>
                <p class="rating">Đánh giá: 3 sao</p>
              </div>
            </div>
            <p class="comment">Khá ổn!</p>
          </div>
          <!-- Thêm các đánh giá và nhận xét khác tại đây -->
        </div>
      </div>
    </div>
    <form class="mt-4">
          <div class="form-group">
            <label for="comment">Nhận xét:</label>
            <textarea class="form-control" id="comment" rows="3"></textarea>
          </div>
          <div class="form-group">
            <label for="rating">Đánh giá:</label>
            <select class="form-control" id="rating">
              <option value="1">1 sao</option>
              <option value="2">2 sao</option>
              <option value="3">3 sao</option>
              <option value="4">4 sao</option>
              <option value="5">5 sao</option>
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


