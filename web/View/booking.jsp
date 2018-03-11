<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/22/2017
  Time: 12:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <ul class="nav navbar-nav">
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" style="color:#ffffff;"><strong>Our Destinations</strong></a>
                        <ul class="dropdown-menu" role="menu">
                            <li role="presentation"><a href="#">Local Destinations</a></li>
                            <li role="presentation"><a href="#">International Destinations</a></li>
                        </ul>
                    </li>
                    <li role="presentation"><a href="#" style="color:#ffffff;"><strong>Book Tickets</strong></a></li>
                    <li role="presentation"><a href="#" style="color:#ffffff;"><strong>Feedback </strong></a></li>
                </ul>
                <p class="navbar-text navbar-right actions">
                    <a class="btn" data-toggle="modal" data-target="#signinModal" style="color:#ffffff;">Log In</a>
                    <a class="btn btn-default action-button" role="button" data-toggle="modal" data-target="#signupModal">Sign Up</a>
                </p>
            </div>
        </div>
    </nav>
</div>


<div style="text-align:center;padding:40px;background:url(&quot;assets/img/plane.jpg&quot;)no-repeat;background-size:cover;">
    <div class="jumbotron" style="border-radius:20px;padding:40px;background:rgba(255,255,255,0.75);margin-top:100px;">
        <form method="post" action="/searchresults">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label">From </label>
                        <input class="form-control" required name="from" type="text" style="width:270px;margin:auto;">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label">To </label>
                        <input class="form-control" required name="to" type="text" style="width:270px;margin:auto;">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label">Date</label>
                <input class="form-control" required type="date" onchange="setMinDate()" id="departuredate" name="date" style="width:150px;height:30px;margin:auto;">
            </div>

            <div class="form-group">
                <select name="class">
                    <option value="economy">Economy</option>
                    <option value="firstclass">First Class</option>
                    <option value="business">Business Class</option>
                </select>
            </div>
            <div class="form-group">
                <label class="control-label">Seats </label>
                <input class="form-control" required name="seats" type="number" min="1" style="width:70px;margin:auto;">
            </div>

            <button class="btn btn-default" type="submit" style="margin-top:20px;width:243px;"><strong>Search Flights</strong></button>
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
<script>
    var t=new Date();
    t.setDate(t.getDate()+1);
    var today = new Date(t).toISOString().split('T')[0];
    document.getElementById("departuredate").setAttribute('min', today);
    document.getElementById("arrivaldate").setAttribute('min', today);

</script>

</body>

</html>