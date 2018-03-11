<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/22/2017
  Time: 1:25 AM
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
                    <li role="presentation"><a href="/addflight" style="color:#ffffff;"><strong>Add Flight</strong></a></li>
                    <li role="presentation"><a href="/showallflights" style="color:#f0f9ff;"><strong>Update Flight Info</strong></a></li>
                </ul>
                <p class="navbar-text navbar-right actions">
                    <a class="btn" data-toggle="modal" data-target="#signinModal" style="color:#ffffff;">Admin</a>
                    <a class="btn btn-default action-button" role="button" data-toggle="modal" data-target="#signupModal">Logout</a>
                </p>
            </div>
        </div>
    </nav>
</div>
<div style="text-align:center;padding:40px;background:url(&quot;assets/img/plane.jpg&quot;)no-repeat;background-size:cover;">
    <div class="jumbotron" style="border-radius:20px;padding:40px;background:rgba(255,255,255,0.75);margin-top:20px;">
        <form method="post" id="form" onsubmit="return validateForm()" action="${pageContext.request.contextPath}/addflight">
            <div class="form-group">
                <label class="control-label">Flight Number</label>
                <input class="form-control" type="text" name="flightno" required style="width:270px;margin:auto;">
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label">From </label>
                        <input class="form-control" type="text" name="from" required style="width:270px;margin:auto;">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label">To </label>
                        <input class="form-control" type="text" name="to" required style="width:270px;margin:auto;">
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top:20px;">
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label">Date </label>
                        <input class="form-control" type="date" id="date" name="date" required style="width:150px;height:30px;margin:auto;">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label">Time </label>
                        <input class="form-control" type="time"  name="time" required style="width:120px;height:30px;margin:auto;">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label">Total Seats</label>
                <input class="form-control" id="totalseats" type="number" min="0" name="totalseats" required style="width:60px;height:30px;margin:auto;">
            </div>


            <div class="row" style="margin-top:20px;">
                <div class="col-md-4" style="outline:solid;outline-color:#4f86c3;">
                    <div class="form-group">
                        <label class="control-label">Economy Class Seats</label>
                        <input class="form-control" type="number" min="0" id="economyseats" name="economyseats" required style="width:60px;height:30px;margin:auto;">
                    </div>
                    <div class="form-group">
                        <label class="control-label">Economy Class Price</label>
                        <input class="form-control" type="number" min="0" name="economyprice" required style="width:60px;height:30px;margin:auto;">
                    </div>
                </div>
                <div class="col-md-4" style="outline:solid;outline-color:#4f86c3;">
                    <div class="form-group">
                        <label class="control-label">First Class Seats</label>
                        <input class="form-control" type="number" min="0" id="firstclassseats" name="firstclassseats" required style="width:60px;height:30px;margin:auto;">
                    </div>
                    <div class="form-group">
                        <label class="control-label">First Class Price</label>
                        <input class="form-control" type="number" min="0" name="firstclassprice" required style="width:60px;height:30px;margin:auto;">
                    </div>
                </div>
                <div class="col-md-4" style="outline:solid;outline-color:#4f86c3;">
                    <div class="form-group">
                        <label class="control-label">Business Class Seats</label>
                        <input class="form-control" type="number" min="0" id="businessseats" name="businessseats" required style="width:60px;height:30px;margin:auto;">
                    </div>
                    <div class="form-group">
                        <label class="control-label">Business Class Price</label>
                        <input class="form-control" type="number" min="0" name="businessprice" required style="width:60px;height:30px;margin:auto;">
                    </div>
                </div>
            </div>
            <button class="btn btn-default" type="submit" style="margin-top:40px;"><strong>Add Flight</strong></button>
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
    t.setDate(t.getDate()+2);
    var today = new Date(t).toISOString().split('T')[0];
    document.getElementById("date").setAttribute('min', today);

</script>
</body>

</html>