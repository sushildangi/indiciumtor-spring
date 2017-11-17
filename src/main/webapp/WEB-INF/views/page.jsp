<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="_csrf" content="${_csrf.token }">
    <meta name="_csrf_header" content="${_csrf.headerName }">

    <title>Indicium Tor | ${title }</title>

    <script type="text/javascript">
        window.menu = '${title }';
        window.contextRoot = '${contextRoot}'
    </script>

    <link href="${contextRoot }/static/assets/plugins/bootstrap/bootstrap.css" rel="stylesheet"/>
    <link href="${contextRoot }/static/assets/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href="${contextRoot }/static/assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet"/>
    <link href="${contextRoot }/static/assets/css/style.css" rel="stylesheet"/>
    <link href="${contextRoot }/static/assets/css/main-style.css" rel="stylesheet"/>

</head>

<body>
<!--  wrapper -->
<div id="wrapper">
    <!-- navbar top -->

    <%@include file="shared/navbar.jsp" %>

    <!-- end navbar top -->

    <!-- sidebar side -->

    <%@include file="shared/sidebar.jsp" %>

    <!-- end navbar side -->


    <!--  page-wrapper -->

    <c:if test="${userClickHome == true }">
        <%@include file="blankPage.jsp"%>
    </c:if>

    <c:if test="${userClickAboutUs == true }">
        <%@include file="AboutUs.jsp"%>
    </c:if>



    <!-- end page-wrapper -->

</div>
<!-- end wrapper -->

<!-- Core Scripts - Include with every page -->
<script src="${contextRoot }/static/assets/plugins/jquery-1.10.2.js"></script>
<script src="${contextRoot }/static/assets/plugins/bootstrap/bootstrap.min.js"></script>
<script src="${contextRoot }/static/assets/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${contextRoot }/static/assets/plugins/pace/pace.js"></script>
<script src="${contextRoot }/static/assets/scripts/siminta.js"></script>
<script src="${contextRoot }/static/js/myApp.js"></script>

</body>

</html>
