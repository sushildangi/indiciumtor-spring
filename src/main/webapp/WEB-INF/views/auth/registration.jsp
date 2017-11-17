<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
    <title>Indicium Tor | Registration Form</title>
    <!-- font files  -->
    <link href='//fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' role='text/css'>
    <link href='//fonts.googleapis.com/css?family=Nunito:400,300,700' rel='stylesheet' role='text/css'>
    <!-- /font files  -->
    <!-- css files -->
    <link href="${contextRoot}/static/css/style.css" rel='stylesheet' role='text/css' media="all"/>
    <!-- /css files -->
</head>
<body>
<h1>Registration Form</h1>
<div class="log">
    <div class="content2 w3agile">
        <h2>Sign Up</h2>
        <sf:form action="${contextRoot}/registration" method="post" modelAttribute="user">

            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="firstName">First Name</label></div>
                <div class="col-md-8">
                    <sf:input path="firstName" role="text" class="form-control" placeholder="Enter First Name"/><br>

                    <sf:errors path="firstName" cssStyle="color: honeydew"
                               element="em"/>
                </div>
            </div>


            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="lastName">Last Name</label></div>
                <div class="col-md-8">
                    <sf:input path="lastName" role="text" class="form-control" placeholder="Enter Last Name"/>
                    <br><sf:errors path="lastName" cssStyle="color: honeydew"
                                   element="em"/>
                </div>
            </div>

            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="phone">Phone Number</label></div>
                <div class="col-md-8">
                    <sf:input path="phone" role="tel" class="form-control" placeholder="Enter Phone Number"/>
                    <br> <sf:errors path="phone" cssStyle="color: honeydew"
                                    element="em"/>
                </div>
            </div>

            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="email">EMail</label></div>
                <div class="col-md-8">
                    <sf:input path="email" role="email" class="form-control" placeholder="Enter EMail Id"/>
                    <br><sf:errors path="email" cssStyle="color: honeydew"
                                   element="em"/>
                </div>
            </div>


            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="password">Password</label></div>
                <div class="col-md-8">
                    <sf:input path="password" role="password" class="form-control" placeholder="Enter Password"/>
                    <br><sf:errors path="password" cssStyle="color: honeydew"
                                   element="em"/>
                </div>
            </div>


            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="confirmPassword">Confirm Password</label></div>
                <div class="col-md-8">
                    <sf:input path="confirmPassword" role="password" class="form-control"
                              placeholder="ReEnter Password"/>
                    <br><sf:errors path="confirmPassword" cssStyle="color: honeydew"
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
                        <br> </sf:select>
                    <errors path="role" cssStyle="color: honeydew"
                            element="em"/>
                </div>
            </div>


            <input role="submit" class="register" value="Sign Up">
        </sf:form>
        <h3>Already have an account? <a href="#">Sign In</a></h3>
    </div>
</div>
<div class="footer">
    <p>© 2017 Indicium Tor Login Form. All Rights Reserved | Design by isolutions4u.com</a>
    </p>
</div>

</body>
</html>