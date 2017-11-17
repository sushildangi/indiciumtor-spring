<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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
<h1>Registration Form</h1>
<div class="log">
    <div class="content2 w3agile">
        <h2>Sign Up</h2>
        <sf:form action="${contextRoot}/registration" method="post" modelAttribute="user" autocomplete="false">

            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="firstName">First Name</label></div>
                <div class="col-md-8">
                    <sf:input path="firstName" type="text" class="form-control" placeholder="Enter First Name"/>
                    <br>
                    <sf:errors path="firstName" cssStyle="color: honeydew"
                            element="em"/>
                </div>
            </div>


            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="lastName">Last Name</label></div>
                <div class="col-md-8">
                    <sf:input path="lastName" type="text" class="form-control" placeholder="Enter Last Name"/>
                    <br>
                    <sf:errors path="lastName" cssStyle="color: honeydew"
                            element="em"/>
                </div>
            </div>

            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="phone">Phone Number</label></div>
                <div class="col-md-8">
                    <sf:input path="phone" type="tel" class="form-control" placeholder="Enter Phone Number"/>
                    <br>
                    <sf:errors path="phone" cssStyle="color: honeydew"
                            element="em"/>
                </div>
            </div>

            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="email">EMail</label></div>
                <div class="col-md-8">
                    <sf:input path="email" type="email" class="form-control" placeholder="Enter EMail Id"/>
                    <br>
                    <sf:errors path="email" cssStyle="color: honeydew"
                            element="em"/>
                </div>
            </div>


            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="password">Password</label></div>
                <div class="col-md-8">
                    <sf:input path="password" type="password" class="form-control" placeholder="Enter Password"/>
                    <br>
                    <sf:errors path="password" cssStyle="color: honeydew"
                            element="em"/>
                </div>
            </div>


            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="confirmPassword">Confirm Password</label></div>
                <div class="col-md-8">
                    <sf:input path="confirmPassword" type="password" class="form-control" placeholder="ReEnter Password"/>
                    <br>
                    <sf:errors path="confirmPassword" cssStyle="color: honeydew"
                            element="em"/>
                </div>
            </div>

            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="role">Registration Type</label></div>
                <div class="col-md-8">
                    <sf:select class="test" path="role">
                        <sf:option value="student">student</sf:option>
                        <sf:option value="alumni">alumni</sf:option>
                        <sf:option value="faculty">faculty</sf:option>
                    </sf:select>
                    <errors path="role" cssStyle="color: honeydew"
                            element="em"/>
                </div>
            </div>


            <input type="submit" class="register" value="Sign Up">
        </sf:form>
        <h3>Already have an account? <a href="${contextRoot}/login">Sign In</a></h3>
    </div>
</div>
<div class="footer">
    <p>&copy; 2017 Indicium Tor Registration Form. All Rights Reserved | Design by <a href="http://isolutions4u.com/" target="_blank">isolutions4u</a>
    </p>
</div>

</body>
</html>