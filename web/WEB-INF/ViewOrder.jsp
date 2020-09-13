<%@ page import="kz.edu.astanait.Order" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 08.09.2020
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Lesson</title>
</head>
<body>
<%-- directive include to header--%>
<%@ include file="header.jsp"%>
<%
    Order lesson=(Order) request.getAttribute("lesson");

%>
<section class="page-section cta">
    <div class="container">
        <div class="row">
            <div class="col-xl-9 mx-auto">
                <div class="cta-inner text-center rounded">
                    <p class="mb-0"><h1>Order INFO</h1>
                    <h3>Order ID:<%=lesson.getOrder_id()%></h3>
                    <h4><% String pageName = page.toString();
                        out.println("Welcome, " +lesson.getCustomer_name());%></h4>
                    <h4>phone number:<%=lesson.getCustomer_number()%></h4>
                    <h4>Order:<%=lesson.getDrink()%></h4>
                    <h4>Size: <%=lesson.getSizeOrder()%></h4></p>
                    <%-- implicit object out  --%>
                    <%out.print("Order time:"+java.util.Calendar.getInstance().getTime()); %>

                </div>
            </div>
            <%=
                    getServletInfo()
                    %>

        </div>
    </div>
</section>

<%-- directive include to footer --%>
<%@include file="footer.jsp"%>
</body>
</html>
