<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
</head>

<body>
	
        <h3 class="text-center text-white pt-5">Đăng nhập</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
              <c:if test="${not empty message}">
					<div class="alert alert-${alert}">
							${message}
					</div>
				</c:if>
                    <div id="login-box" class="col-md-12">
                        <form action="<c:url value='/dang-nhap'/>" id="formLogin" method="POST">
                            <h3 class="text-center text-info">Đăng nhập</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Tên đăng nhập :</label><br>
                                <input type="text" name="userName" id="userName" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Mật khẩu:</label><br>
                                <input type="text" name="password" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Lưu mật khẩu</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="#" class="text-info">Đăng kí</a>
                            </div>
                            <input type="hidden" value="login" name="action" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
   
</body>
</html>