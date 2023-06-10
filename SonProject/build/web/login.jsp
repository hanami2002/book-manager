<%-- 
    Document   : login
    Created on : Jun 9, 2023, 6:58:17 PM
    Author     : Hanami
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Đăng nhập và Đăng ký</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <div class="row justify-content-center mt-5">
                <div class="col-md-6">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#login">Đăng nhập</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#register">Đăng ký</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="login">
                            <h2>Đăng nhập</h2>
                            <form action="login" method="post">
                                <div class="form-group">
                                    <label for="loginUsername">Tài khoản:</label>
                                    <input name="username" type="text" class="form-control" id="loginUsername" placeholder="Nhập tài khoản" required>
                                </div>
                                <div class="form-group">
                                    <label for="loginPassword">Mật khẩu:</label>
                                    <input name="password" type="password" class="form-control" id="loginPassword" placeholder="Nhập mật khẩu" required>
                                </div>
                                <p style="color: red">${messageLogin}</p>
                                <button name="action" value="login" type="submit" class="btn btn-primary">Đăng nhập</button>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="register">
                            <h2>Đăng ký</h2>
                            <form action="login" method="post">
                                <div class="form-group">
                                    <label for="registerUsername">Tài khoản:</label>
                                    <input name="registerUsername" type="text" class="form-control" id="registerUsername" placeholder="Nhập tài khoản" required>
                                </div>
                                <div class="form-group">
                                    <label for="registerPassword">Mật khẩu:</label>
                                    <input name="registerPassword" type="password" class="form-control" id="registerPassword" placeholder="Nhập mật khẩu" required>
                                </div>
                                <div class="form-group">
                                    <label for="confirmPassword">Nhập lại mật khẩu:</label>
                                    <input name="confirmPassword" type="password" class="form-control" id="confirmPassword" placeholder="Nhập lại mật khẩu" required>
                                </div>
                                <p style="color: red">${messageSignin}</p>
                                <p id="password-error" style=" display: none;color: red">mật khẩu không khớp</p>
                                <button name="action" value="register" type="submit" id="saveChangesBtn" class="btn btn-primary">Đăng ký</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#confirmPassword').on('input change', function () {
                    var password = $('#registerPassword').val();
                    var rePassword = $(this).val();
                    if (password !== rePassword) {
                        $('#password-error').show();
                        $("#saveChangesBtn").prop('disabled', true);
                    } else {
                        $('#password-error').hide();
                        $("#saveChangesBtn").prop('disabled', false);
                    }
                });
            });

        </script>
    </body>
</html>
