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
            <h2>Thêm sách</h2>
            <div class="row">                
                <div class="col-md-6">                                     
                    <form>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="title">Tiêu đề:</label>
                                <input type="text" class="form-control" id="title" placeholder="Nhập tiêu đề sách">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="author">Tác giả:</label>
                                <input type="text" class="form-control" id="author" placeholder="Nhập tên tác giả">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description">Mô tả:</label>
                            <textarea class="form-control" id="description" placeholder="Nhập mô tả về sách" cols="30" rows="5"></textarea>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="releaseDate">Ngày phát hành:</label>
                                <input type="date" class="form-control" id="releaseDate">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="pages">Số trang:</label>
                                <input min="0" type="number" class="form-control" id="pages" placeholder="Nhập số trang">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="genre">Thể loại:</label>
                            <div class="select-container">
                            <select name="" class="form-control" id="genre"  placeholder="Nhập thể loại sách">
                                <option>1</option>
                                <option>2</option>
                                <option>1</option>
                                <option>2</option>
                                <option>1</option>
                                <option>2</option>
                                <option>1</option>
                                <option>2</option>
                            </select>
                                </div>

                        </div>
                        <button type="submit" class="btn btn-primary">Thêm sách</button>
                    </form>                   
                </div>
                <div class="col-md-6">
                    <h4>Ảnh bìa</h4>
                    <form enctype="multipart/form-data">
                        <div class="form-group">
                            <input type="file" class="form-control-file" id="coverImage" accept="image/*">
                        </div>
                        <div class="form-group">
                            <img id="previewImage"   style="width: 300px; height: 400px;">
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
