<!doctype html>
<html>
<head>
    <title>Social Login Form Flat Responsive widget Template :: w3layouts</title>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- font files  -->
    <link href='//fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Nunito:400,300,700' rel='stylesheet' type='text/css'>
    <!-- /font files  -->
    <!-- css files -->
    <link href="${contextRoot}/static/css/style.css" rel='stylesheet' type='text/css' media="all"/>
    <!-- /css files -->
</head>
<body>
<h1>Social Login Form</h1>
<div class="log">
    <div class="content2 w3agile">
        <h2>Sign Up</h2>
        <form action="#" method="post">

            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="firstName">First Name</label></div>
                <div class="col-md-8">
                    <input path="firstName" type="text" class="form-control" placeholder="Enter First Name"/>
                    <errors path="firstName" cssClass="help-block"
                            element="em"/>
                </div>
            </div>


            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="lastName">Last Name</label></div>
                <div class="col-md-8">
                    <input path="lastName" type="text" class="form-control" placeholder="Enter Last Name"/>
                    <errors path="lastName" cssClass="help-block"
                            element="em"/>
                </div>
            </div>

            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="phone">Phone Number</label></div>
                <div class="col-md-8">
                    <input path="phone" type="tel" class="form-control" placeholder="Enter Phone Number"/>
                    <errors path="phone" cssClass="help-block"
                            element="em"/>
                </div>
            </div>

            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="email">EMail</label></div>
                <div class="col-md-8">
                    <input path="email" type="email" class="form-control" placeholder="Enter EMail Id"/>
                    <errors path="email" cssClass="help-block"
                            element="em"/>
                </div>
            </div>


            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="password">Password</label></div>
                <div class="col-md-8">
                    <input path="password" type="password" class="form-control" placeholder="Enter Password"/>
                    <errors path="password" cssClass="help-block"
                            element="em"/>
                </div>
            </div>


            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="confirmPassword">Confirm Password</label></div>
                <div class="col-md-8">
                    <input path="confirmPassword" type="password" class="form-control" placeholder="ReEnter Password"/>
                    <errors path="confirmPassword" cssClass="help-block"
                            element="em"/>
                </div>
            </div>

            <div class="form-group">
                <div class="test1">
                    <label class="control-label col-md-4" for="type">Registration Type</label></div>
                <div class="col-md-8">
                    <select class="test" path="type">
                        <option value="student">student</option>
                        <option value="alumni">alumni</option>
                        <option value="faculty">faculty</option>
                    </select>
                    <errors path="type" cssClass="help-block"
                            element="em"/>
                </div>
            </div>


            <input type="submit" class="register" value="Sign Up">
        </form>
        <h3>Already have an account? <a href="#">Sign In</a></h3>
    </div>
</div>
<div class="footer">
    <p>© 2016 Social Login Form. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts</a>
    </p>
</div>

</body>
</html>