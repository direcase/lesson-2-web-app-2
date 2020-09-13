<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 08.09.2020
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Java Coffee</title>
  </head>
  <body>
  <%@ include file="header.jsp"%>

  <section class="page-section clearfix">
    <div class="container">
      <div class="intro">
        <img class="intro-img img-fluid mb-3 mb-lg-0 rounded" src="img/intro.jpg" alt="">
        <div class="intro-text left-0 text-center bg-faded p-5 rounded">
          <h2 class="section-heading mb-4">
            <span class="section-heading-upper">Fresh Coffee</span>
            <span class="section-heading-lower">Worth Drinking</span>
          </h2>
          <p class="mb-3">Every cup of our quality artisan coffee starts with locally sourced, hand picked ingredients. Once you try it, our coffee will be a blissful addition to your everyday morning routine - we guarantee it!
          </p>
          <div class="intro-button mx-auto">
            <a class="btn btn-primary btn-xl" href="#">Visit Us Today!</a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="page-section cta">
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto">
          <div class="cta-inner text-center rounded">
            <h2 class="section-heading mb-4">
              <span class="section-heading-upper">Our Promise</span>
              <span class="section-heading-lower">To You</span>
            </h2>
            <p class="mb-0">When you walk into our shop to start your day, we are dedicated to providing you with friendly service, a welcoming atmosphere, and above all else, excellent products made with the highest quality ingredients. If you are not satisfied, please let us know and we will do whatever we can to make things right!</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <%-- html form  --%>
  <section class="page-section about-heading">
    <div class="container">
      <img class="img-fluid rounded about-heading-img mb-3 mb-lg-0" src="img/about.jpg" alt="">
      <div class="about-heading-content">
        <div class="row">
          <div class="col-xl-9 col-lg-10 mx-auto">
            <div class="bg-faded rounded p-5">
              <h2 class="section-heading mb-4">
                <span class="section-heading-upper">Make order online</span>
                <span class="section-heading-lower"></span>
              </h2>
              <form action="<%=request.getContextPath()%>/OrderServlet" method="post">
                <input type="text" name="name" placeholder="Enter your name..."> <br><br>
                <input type="text" name="number" placeholder="Enter your phone number..."><br><br><br>

                Drink <select name="drink">
                <option value=""></option>
                <option value="latte">Latte</option>
                <option value="mocha">Mocha</option>
                <option value="espresso">Еspresso</option>
                <option value="milk">Milk</option>
                <option value="spicedTea">Spiced Tea</option>
                <option value="americano">Americano</option>
                <option value="hotChocolate">Hot Chocolate</option>
                <option value="hotTea">Hot Tea</option>
              </select>

                Size <select name="size">
                <option value="large">large</option>
                <option value="middle">middle</option>
                <option value="small">small</option>
              </select><br><br>
                <input type="submit">
              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="page-section">
    <div class="container">
      <div class="product-item">
        <div class="product-item-title d-flex">
          <div class="bg-faded p-5 d-flex ml-auto rounded">
            <h2 class="section-heading mb-0">
              <span class="section-heading-upper">Here you may leave your comment about us</span>
            </h2>
          </div>
        </div>
        <img class="product-item-img mx-auto d-flex rounded img-fluid mb-3 mb-lg-0" src="img/products-01.jpg" alt="">
        <div class="product-item-description d-flex mr-auto">
          <div class="bg-faded p-5 rounded">
            <form action="<%=request.getContextPath()%>/CommentServlet" method="post">
              <input type="text" name="Name" placeholder="Enter your name..."> <br><br>
              <input type="text" name="age" placeholder="Enter your age..."><br><br><br>

              <textarea name="comment" placeholder="Enter your comment..."></textarea><br><br>
              <input type="submit"> <br><br>
              <br><br><br><br>
              contact administrator<input type="checkbox" name="admin">
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
  <%--jsp comments --%>
  <%@include file="footer.jsp"%>
  </body>
</html>
