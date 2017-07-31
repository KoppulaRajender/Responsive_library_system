<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E:\library info\loginpage</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/user.css">
    <%!String userid;%>
</head>

<body>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand navbar-link" href="#"><img src="assets/img/logo.png" id="logo"><strong>Library &amp; Information</strong></a>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav navbar-right">
                    <li role="presentation"><a href="#">Collection </a></li>
                    <li role="presentation"><a href="#">Branches </a></li>
                    <li role="presentation"></li>
                    <li role="presentation"><a href="#">About Us</a></li>
                    <li class="active" role="presentation"><a href="login.html">Login </a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="login-card"><img src="assets/img/avatar_2x.png" class="profile-img-card">
        <p class="profile-name-card"> </p>
		    <p align="center">login details are wrong</p>
        <form class="form-signin" method="GET" action="login.jsp">
            <div class="col-md-6">
                <div class="radio">
                    <label>
                        <input checked="checked" name="selection" type="radio" value="student">Student</label>
                </div>
            </div>
            <div class="col-md-6">
                <div class="radio">
                    <label>
                        <input name="selection" type="radio" value="staff">Staff</label>
                </div>
            </div><span class="reauth-email"> </span>
            <input class="form-control" type="text"  id="inputEmail" name="userid" value="<% userid=(String)session.getAttribute("userid"); out.println(userid); %>">
            <input class="form-control" type="password" required="" autofocus="" placeholder="Password" id="inputPassword" name="password">
            <div class="form-group" id="divspace">
            </div>
            <div class="checkbox">
                <div class="checkbox">
                    <label>
                        <input type="checkbox">Remember me</label>
                </div>
            </div>


            <button class="btn btn-primary btn-block btn-lg btn-signin" type="submit">Sign in</button>
        </form><a href="#" class="forgot-password">Forgot your password?</a></div>



    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
