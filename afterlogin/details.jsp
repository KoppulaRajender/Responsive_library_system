
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E:\library info\afterlogin</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/user.css">
    <script type="text/javascript">
        function checkPasswordMatch() 
        {
            /*var password = $("#pwd").val();
            var confirmPassword = $("#pwd1").val();

            if (password != confirmPassword)
               $("#divspace").html("Passwords do not match!");

            else
                $("#divspace").html("Passwords match.");*/

            if(form.pwd.value != form.pwd1.value)
            {
                alert("wrong password");
                return false;
            }
            else
                return true;
        }

        $(document).ready(function () {
           $("#pwd1").keyup(checkPasswordMatch);
        });
    </script>
</head>

<body>

<%!
String userid;

%>




}



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
                  
                  <li class="active" role="presentation"><a href="#">Login </a></li>
              </ul>
            </div>
        </div>
    </nav>
    <div class="row register-form" id="first-row">
        <div class="col-md-8 col-md-offset-2" id="first-column">
            <form class="form-horizontal custom-form" id="custom-form" method="post" action="adddetails.jsp" onsubmit="checkPasswordMatch(this)">
                <h1>First Login Form</h1>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field" name="userid" value="<% userid=(String)session.getAttribute("userid"); out.println(userid); %>">User Id</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text" readonly="" name="userid" value="<% userid=(String)session.getAttribute("userid"); out.println(userid); %>">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field" name="name">Name </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text" autofocus="" name="name">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field" name="branch">Branch</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text"  name="branch">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="email-input-field" name="email">Email </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="email" inputmode="email" name="email">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="email-input-field" name="mobile">Contact Number</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="num" inputmode="tel" name="mobile">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="pawssword-input-field" name="pwd" >New Password </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="password" name="pwd" id="pwd" >
                    </div>
                </div>
                <div class="form-group" >
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="repeat-pawssword-input-field" name="pwd1">Repeat Password </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="password" name="pwd1" id="pwd1";" >

                    </div>
                </div>
                <div class="form-group" id="divspace">
                </div>
                <button class="btn btn-default submit-button" type="submit" >Submit</button>  
            </form>
        </div>
    </div>
    
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/index.js"></script>
</body>

</html>
