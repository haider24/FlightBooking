<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/16/2017
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>homepage</title>
  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="../assets/fonts/ionicons.min.css">
  <link rel="stylesheet" href="../assets/css/Article-List.css">
  <link rel="stylesheet" href="../assets/css/Footer-Clean.css">
  <link rel="stylesheet" href="../assets/css/Footer-Dark.css">
  <link rel="stylesheet" href="../assets/css/Navigation-with-Button1.css">
  <link rel="stylesheet" href="../assets/css/styles.css">
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
          <li role="presentation"><a href="booking.html" style="color:#ffffff;"><strong>Book Tickets</strong></a></li>
          <li role="presentation"><a href="#" style="color:#ffffff;"><strong>Feedback </strong></a></li>
        </ul>
        <p class="navbar-text navbar-right actions">
          <a class="btn" href="/login" style="color:#ffffff;">Log In</a>
          <a class="btn btn-default action-button" role="button" data-toggle="modal" data-target="#signupModal">Sign Up</a>
        </p>
      </div>
    </div>
  </nav>
</div>
<div>
  <div class="container">
    <div data-ride="carousel" class="carousel slide" id="carousel-1" style="width:821px;height:350px;">
      <div role="listbox" class="carousel-inner" style="width:inherit;height:inherit;">
        <div class="item active" style="width:inherit;height:inherit;"><img src="../assets/img/france.jpg" alt="Slide Image" />
          <div class="carousel-caption">
            <h3></h3>

          </div>
        </div>
        <div class="item" style="width:inherit;height:inherit;"><img src="../assets/img/italy.jpg" alt="Slide Image" />
          <div class="carousel-caption">
            <h3></h3>

          </div>
        </div>
        <div class="item" style="width:inherit;height:inherit;"><img src="../assets/img/rome.jpg" alt="Slide Image" /></div>
        <div class="carousel-caption">
          <h3>Daily Flights to European Countries</h3>

        </div>
      </div>
      <div><a href="#carousel-1" role="button" data-slide="prev" class="left carousel-control"><i class="glyphicon glyphicon-chevron-left"></i><span class="sr-only">Previous</span></a>
        <a href="#carousel-1" role="button" data-slide="next" class="right carousel-control"><i class="glyphicon glyphicon-chevron-right"></i><span class="sr-only">Next</span></a>
      </div>
      <ol class="carousel-indicators">
        <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-1" data-slide-to="1"></li>
        <li data-target="#carousel-1" data-slide-to="2"></li>
      </ol>
    </div>
  </div>
</div>
<div style="margin-top:20px;">
  <div class="container">
    <div class="row" style="background-color:#dfe8ee;">
      <div class="col-md-6" style="background-color:#dfe8ee;">
        <h1 style="color:#0072c6;"><strong>Discover Europe</strong></h1>
        <p><strong>With Multiple daily flights to France, Italy, Rome and other popular European Countries discover Europe.</strong></p>
      </div>
      <div class="col-md-6"><img src="../assets/img/europe.jpg" style="width:485px;height:172px;"></div>
    </div>
  </div>
</div>
<div class="article-list" style="margin-top:30px;background-color:#dfe8ee;">
  <div class="container">
    <div class="row articles">
      <div class="col-md-4 col-sm-6 item"><img class="img-responsive" src="../assets/img/crew.jpg" style="height:195.234px;">
        <h3 class="name">Always at your service</h3>
        <p class="description">Our team is active and available 24/7 to provide you best services.</p>
        <a href="#" class="action"></a>
      </div>
      <div class="col-md-4 col-sm-6 item"><img class="img-responsive" src="../assets/img/plane.jpg" style="height:195.234px;">
        <h3 class="name">20+ International and 30+ Domestic Flights</h3>
        <p class="description">With our 20+ International and 30+ Domestic flights everyday travel to your desired location cheaply and safely.</p>
        <a href="#" class="action"></a>
      </div>
      <div class="col-md-4 col-sm-6 item"><img class="img-responsive" src="../assets/img/business.jpg" style="height:195.234px;">
        <h3 class="name">We Make Your Trip Memorable</h3>
        <p class="description">Our team works day and night to provide you best services. to make your trip comfortable and memorable</p>
        <a href="#" class="action"></a>
      </div>
    </div>
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
<div class="modal fade" role="dialog" tabindex="-1" id="signinModal" style="width:320px;height:441px;margin:auto;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" style="width:320px;">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title">Sign In</h4></div>
      <div class="modal-body" style="width:290px;height:167px;">
        <form method="post">
          <h2 class="sr-only">Login Form</h2>
          <div class="form-group">
            <input class="form-control" type="email" name="email" placeholder="Email">
          </div>
          <div class="form-group">
            <input class="form-control" type="password" name="password" placeholder="Password">
          </div>
          <div class="form-group">
            <button class="btn btn-primary btn-block" type="submit">Log In</button>
          </div>
        </form>
      </div>
      <div class="modal-footer" style="width:320px;"><a href="#" class="forgot">Don't have an account? Click Here and create one</a></div>
    </div>
  </div>
</div>
<div class="modal fade" role="dialog" tabindex="-1" id="signupModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h2 class="text-center"><strong>Create</strong> an account.</h2></div>
      <div class="modal-body">
        <form method="post">
          <div class="form-group">
            <input class="form-control" type="email" name="email" placeholder="Email">
          </div>
          <div class="form-group">
            <input class="form-control" type="password" name="password" placeholder="Password">
          </div>
          <div class="form-group">
            <input class="form-control" type="password" name="password-repeat" placeholder="Password (repeat)">
          </div>
          <div class="form-group">
            <div class="checkbox">
              <label class="control-label">
                <input type="checkbox">I agree to the license terms.</label>
            </div>
          </div>
          <div class="form-group">
            <button class="btn btn-primary btn-block" type="submit">Sign Up</button>
          </div>
        </form>
      </div>
      <div class="modal-footer"><a href="#" class="already">You already have an account? Login here.</a></div>
    </div>
  </div>
</div>
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/bootstrap/js/bootstrap.min.js"></script>
<script src="../assets/js/myjs.js"></script>
</body>

</html>