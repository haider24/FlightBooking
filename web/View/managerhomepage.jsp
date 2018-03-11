<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/22/2017
  Time: 1:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>homepage</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Article-List.css">
    <link rel="stylesheet" href="assets/css/Footer-Clean.css">
    <link rel="stylesheet" href="assets/css/Footer-Dark.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button1.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
<div style="background-color:#363739;">
    <nav class="navbar navbar-default navigation-clean-button" style="background-color:#4f86c3;">
        <div class="container">
            <div class="navbar-header"><a class="navbar-brand navbar-link" href="#" style="color:#ffffff;">Company Name</a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">

                <p class="navbar-text navbar-right actions">
                    <a class="btn"  style="color:#ffffff;">Manager</a>
                    <a class="btn btn-default action-button" role="button">Logout</a>
                </p>
            </div>
        </div>
    </nav>
</div>
<div style="text-align:center;padding:40px;background:url(&quot;assets/img/plane.jpg&quot;)no-repeat;background-size:cover;">
    <div class="jumbotron" style="border-radius:20px;padding:40px;background:rgba(255,255,255,0.75);margin-top:100px;text-align:center;position:relative;">
       <form method="post" action="/approveflights">
        <div class="table-responsive" style="text-align:center;position:relative;">
            <table class="table">
                <thead style="text-align:center;">
                <tr>
                    <th style="text-align:center;">Flight No.</th>
                    <th style="text-align:center;">From</th>
                    <th style="text-align:center;">To</th>
                    <th style="text-align:center;">Economy Seats</th>
                    <th style="text-align:center;"><strong>Price </strong></th>
                    <th style="text-align:center;"><strong>First Class Seats</strong></th>
                    <th style="text-align:center;"><strong>Price</strong></th>
                    <th style="text-align:center;"><strong>Business Seats</strong></th>
                    <th style="text-align:center;"><strong>Price </strong></th>
                    <th style="text-align:center;">Status </th>
                </tr>
                </thead>
                <tbody>
                <jsp:useBean id="list" scope="request" type="java.util.List"/>
                <c:forEach items="${list}" var="flight">
                 <tr>
                     <td><h5>${flight.flightno}</h5> </td>
                     <td><h5>${flight.from}</h5> </td>
                     <td><h5>${flight.to}</h5> </td>
                    <td><h5>${flight.economyseats}</h5> </td>
                    <td><h5>${flight.economyprice}</h5> </td>
                    <td><h5>${flight.firstclassseats}</h5></td>
                    <td><h5>${flight.firstclassprice}</h5> </td>
                    <td><h5>${flight.businessseats}</h5> </td>
                    <td><h5>${flight.businessprice}</h5> </td>
                    <td>
                        <select name=${flight.id}>
                            <option value="pending">Pending</option>
                            <option value="approve">Approve</option>
                            <option value="reject">Reject</option>
                        </select>
                    </td>
                 </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>

        <button class="btn btn-default" type="submit" style="margin-top:20px;"><strong>Save Changes</strong></button>
       </form>
    </div>
</div>
<div class="footer-dark" style="background-color:#4f86c3;">
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-push-6 item text">
                    <h3>About the Company</h3>
                    <p>Praesent sed lobortis mi. Suspendisse vel placerat ligula. Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel in justo.</p>
                </div>
                <div class="col-md-3 col-md-pull-6 col-sm-4 item">
                    <ul>
                        <li><i class="glyphicon glyphicon-earphone" style="width:30px;"></i>
                            <label>111 555 666</label>
                        </li>
                        <li><i class="glyphicon glyphicon-envelope" style="width:30px;"></i>
                            <label>111 555 666</label>
                        </li>
                    </ul>
                </div>
                <div class="col-md-12 col-sm-4 item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
            </div>
            <p class="copyright">Company Name © 2016</p>
        </div>
    </footer>
</div>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/myjs.js"></script>
</body>

</html>