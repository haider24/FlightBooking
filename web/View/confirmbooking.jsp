<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/8/2017
  Time: 8:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirm Booking</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Article-List.css">
    <link rel="stylesheet" href="assets/css/Footer-Clean.css">
    <link rel="stylesheet" href="assets/css/Footer-Dark.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button1.css">
    <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css">
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
                <ul class="nav navbar-nav">
                    <li role="presentation"><a href="#" style="color:#ffffff;"><strong>Book Tickets</strong></a></li>
                </ul>
                <p class="navbar-text navbar-right actions">
                    <a class="btn"  style="color:#ffffff;"></a>
                    <a class="btn btn-default action-button" role="button" data-toggle="modal" data-target="#signupModal">Sign Up</a>
                </p>
            </div>
        </div>
    </nav>
</div>
<div style="text-align:center;padding:40px;background:url(&quot;assets/img/plane.jpg&quot;)no-repeat;background-size:cover;">
    <div class="jumbotron" style="border-radius:20px;padding:40px;background:rgba(255,255,255,0.75);margin-top:100px;text-align:center;position:relative;">
        <div class="table-responsive" style="text-align:center;position:relative;">
            <table class="table">
                <thead style="text-align:center;">
                <tr>
                    <th style="text-align:center;">Flight No.</th>
                    <th style="text-align:center;">From</th>
                    <th style="text-align:center;"><strong>To</strong></th>
                    <th style="text-align:center;"><strong>Date</strong></th>
                    <th style="text-align:center;"><strong>Time</strong></th>
                    <th style="text-align:center;"><strong>Total Seats</strong></th>
                    <th style="text-align:center;">Class</th>
                    <th style="text-align:center;"><strong>Total Price</strong></th>
                </tr>
                </thead>
                <tbody>
                <jsp:useBean id="flight" scope="request" type="Model.searchResult"/>
                <tr>
                    <td><h5>${flight.flight.flightno}</h5> </td>
                    <td><h5>${flight.flight.from}</h5> </td>
                    <td><h5>${flight.flight.to}</h5></td>
                    <td><h5>${flight.flight.date}</h5> </td>
                    <td><h5>${flight.flight.time}</h5> </td>
                    <td><h5>${flight.totalSeats}</h5> </td>
                    <td><h5>${flight.seatType}</h5> </td>
                    <td><h5>${flight.price}</h5> </td>
                </tr>
                </tbody>
            </table>
        </div>
        <form method="post" action="/confirmbooking">
        <input type="text" hidden name="flightid" value=${flight.flight.id}>
            <input type="text" hidden name="price" value=${flight.price}>
        <button type="submit" style="padding:10px;background:#228B22;color:#ffffff;"><strong>Confirm Booking</strong></button>
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