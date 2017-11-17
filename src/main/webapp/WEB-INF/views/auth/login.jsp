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
        <h2>Sign Up</h2>
        <form action="${contextRoot}/login" method="post">

            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="username">User ID</label></div>
                <div class="col-md-8">
                    <input type="email" name="username" class="form-control" placeholder="Enter Email Id"/>
                </div>
            </div>


            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="password">Password</label></div>
                <div class="col-md-8">
                    <input type="password" name="password" class="form-control" placeholder="Enter Password"/>

                </div>
            </div>

            <br>

            <input type="submit" class="sign-in" value="Sign In">
        </form>
        <h3>Already have an account? <a href="#">Sign In</a></h3>
    </div>
</div>
<div class="footer">
    <p>© 2017 Indicium Tor Login Form. All Rights Reserved | Design by isolutions4u.com</a>
    </p>
</div>

</body>
</html>