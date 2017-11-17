<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
    <title>Indicium Tor | Registration Form</title>
    <!-- font files  -->
    <link href='//fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Nunito:400,300,700' rel='stylesheet' type='text/css'>
    <!-- /font files  -->
    <!-- css files -->
    <link href="${contextRoot}/static/css/style.css" rel='stylesheet' type='text/css' media="all"/>
    <!-- /css files -->
</head>
<body>
<h1>Login Form</h1>
<div class="log">
    <div class="content2 w3agile">
        <h2>Sign In</h2>

        <c:if test="${not empty message }">
            <div class="row">
                <div class="col-md-offset-3 col-md-6">
                    <div style="color:honeydew !important;">${message }</div>
                </div>
            </div>

        </c:if>

        <c:if test="${not empty logout }">
            <div class="row">
                <div class="col-md-offset-3 col-md-6">
                    <div style="color:honeydew !important;">${logout }</div>
                </div>
            </div>

        </c:if>
        <c:if test="${not empty successMessage }">
            <div class="row">
                <div class="col-md-offset-3 col-md-6">
                    <div style="color:honeydew !important;">${successMessage }</div>
                </div>
            </div>

        </c:if>

        <form action="${contextRoot}/login" method="post" autocomplete="off">

            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="username">User ID</label></div>
                <div class="col-md-8">
                    <input autocomplete="false" type="email" name="username" class="form-control" placeholder="Enter Email Id"/>
                </div>
            </div>


            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="password">Password</label></div>
                <div class="col-md-8">
                    <input type="password" name="password" class="form-control" placeholder="Enter Password"/>
                    <input type="hidden" name="${_csrf.parameterName }"
                           value="${_csrf.token }"/>
                </div>
            </div>

            <br>

            <input type="submit" class="sign-in" value="Sign In">
        </form>
        <h3>New Here? <a href="${contextRoot}/registration">Sign Up</a></h3>
    </div>
</div>
<div class="footer">
    <p>&copy; 2017 Indicium Tor Login Form. All Rights Reserved | Design by <a href="http://isolutions4u.com/" target="_blank">isolutions4u</a>
    </p>
</div>

</body>
</html>