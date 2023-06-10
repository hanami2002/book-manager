<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : add
    Created on : Jun 9, 2023, 7:56:06 PM
    Author     : Hanami
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Thêm sách</title>
        <jsp:useBean id="theloai" scope="page" class="dao.TheLoaiDAO" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            body {
                margin-top: 5%;
            }
            .footer {
                background-color: #008080;
                padding: 20px 0;
                color: #fff;
            }

            .footer p {
                margin: 0;
            }

            .footer-nav {
                list-style: none;
                padding: 0;
                margin: 10px 0 0 0;
                display: flex;
                justify-content: flex-end;
            }

            .footer-nav li {
                margin-left: 10px;
            }

            .footer-nav li a {
                color: #fff;
                text-decoration: none;
            }
        </style>

    </head>
    <body>
        <div class="container">
            <a href="admin-home"><button class="btn btn-primary">Quay về trang chủ</button></a>
            <c:if test="${book!=null}">
                <h2>Thông tin sách</h2>
            </c:if>
            <c:if test="${book==null}">
                <h2>Thêm sách</h2>
            </c:if>

            <div class="row">                
                <div class="col-md-6">                                     
                    <form action="addbook" method="post" enctype="multipart/form-data">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="title">Tiêu đề:</label>
                                <input name="tieude" required value="${book.getTieude()}" type="text" class="form-control" id="title" placeholder="Nhập tiêu đề sách">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="author">Tác giả:</label>
                                <input name="tacgia" required value="${book.getTacgia()}" type="text" class="form-control" id="author" placeholder="Nhập tên tác giả">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description">Mô tả:</label>
                            <textarea name="mota" required  class="form-control" id="description" placeholder="Nhập mô tả về sách" cols="30" rows="5">${book.getMota().trim()}</textarea>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="releaseDate">Ngày phát hành:</label>
                                <input name="ngayphathanh" required value="${book.getPhathanh()}" type="date" class="form-control" id="releaseDate">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="pages">Số trang:</label>
                                <input name="sotrang" required value="${book.getSotrang()}" min="0" type="number" class="form-control" id="pages" placeholder="Nhập số trang">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="genre">Thể loại:</label>
                            <div class="select-container">
                                <select name="theloai" class="form-control" id="genre"  placeholder="Nhập thể loại sách">
                                    <c:forEach var="list" items="${theloai.allTheLoai}">
                                        <option value="${list.getTid()}" <c:if test="${list.getTid()==book.getTheloai()}">
                                                selected</c:if>>${list.getTheloai()}</option>
                                    </c:forEach>

                                </select>
                            </div>
                        </div>
                        <c:if test="${book!=null}">
                            <button name="action" value="editbook" type="submit" class="btn btn-primary">Sửa</button>
                        </c:if>
                        <c:if test="${book==null}">
                            <button name="action" value="addbook" type="submit" class="btn btn-primary">Thêm sách</button>                            
                        </c:if>
                                                               
                </div>
                <div class="col-md-6">
                    <h4>Ảnh bìa</h4>

                    <div class="form-group">
                        <input name="anhbia" type="file" class="form-control-file" id="coverImage" accept="image/*">
                    </div>
                    <div class="form-group">
                        <img id="previewImage" 
                             <c:if test="${book!=null}">
                                 src="${book.getAnhbia()}"
                             </c:if>
                             style="width: 300px; height: 400px;">
                    </div>
                    </form>
                </div>
            </div>

        </div>
        <br>
        <br>
        <br>
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 d-flex justify-content-center align-items-center">
                        <p>&copy; 2023 Quản lí sách. All rights reserved.</p>
                    </div>
                </div>
            </div>
        </footer>



        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <script>
                                const coverImageInput = document.getElementById('coverImage');
                                const previewImage = document.getElementById('previewImage');

                                coverImageInput.addEventListener('change', function (e) {
                                    const file = e.target.files[0];
                                    const reader = new FileReader();

                                    reader.onload = function (e) {
                                        previewImage.setAttribute('src', e.target.result);
                                    }

                                    reader.readAsDataURL(file);
                                });
        </script>
    </body>
</html>
