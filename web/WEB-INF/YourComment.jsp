<%@page import="kz.edu.astanait.Comments" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 13.09.2020
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="header.jsp"%>
<%
    Comments com=(Comments) request.getAttribute("com");

%>
<section class="page-section cta">
    <div class="container">
        <div class="row">
            <div class="col-xl-9 mx-auto">
                <div class="cta-inner text-center rounded">
                    <p class="mb-0"><h1>Thank you,for your comment</h1>
                    <h2>Comment ID:<%=com.getCommentId()%></h2>
                    <h2>Name:<%=com.getName()%></h2>
                    <h2>Your age:<%=com.getAge()%></h2>
                    <h2>Comment:<%=com.getComment()%></h2></p>
                </div>
            </div>
        </div>
    </div>
</section>

<%-- directive include  --%>
<%@include file="footer.jsp"%>
</body>
</html>
