<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>C:\Users\koppula\Pictures\books</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/user.css">
</head>

<body>
    <div style="z-index: -1;">
        <nav class="navbar navbar-default " >
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
                    <li>
                     <div class="dropdown ">
                        <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Branches
                        <span class="caret"></span></button>
                        <ul class="dropdown-menu" id="dropdown">
                          <li class="dropdown-header">Select Branch</li>
                          <li><a href="#cse">CSE</a></li>
                          <li class="divider"></li>
                          <li><a href="#it">IT</a></li>
                          <li class="divider"></li>
                          <li><a href="#eee">EEE</a></li>
                          <li class="divider"></li>
                          <li><a href="#ece">ECE</a></li>
                          <li class="divider"></li>
                          <li><a href="#mech">MECH</a></li>
                          <li class="divider"></li>
                          <li><a href="#chemical">CHEMICAL</a></li>
                          <li class="divider"></li>
                          <li><a href="#bio-tech">BIO-TECH</a></li>
                          <li class="divider"></li>
                          <li><a href="#civil">CIVIL</a></li>
                          <li class="divider"></li>
                        </ul>
                      </div>
                      </li>
                        <li role="presentation"><a href="../index.html#sec01">Collection </a></li>
                        <li role="presentation"><a href="../index.html">About Us</a></li>
                        <li role="presentation"><a href="../login/login.html">Login </a></li>
                    </ul>
                </div>
        </nav>
    </div>
    <div id="topdiv" >
    <section id="cse" style="z-index: 1;">
    <div class="container"  >
        <div class="col-md-12">
            <h2 class="text-left" id="title">Computer Science</h2></div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="../images/c++.png" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a href="../bookpage/bookpage.jsp?id=1001">C++ Programming</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="../images/c.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="../bookpage/bookpage.jsp?id=1002">C Programming</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="../images/dm.png" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#">Discrete Mathematics</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="../images/ES.png" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#">Embedded Systems</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="../images/ravi.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#">Programming Languages</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </section>
    </div>
    <div class="container"  id="it">
        <div class="col-md-12">
            <h2 class="text-left" id="title">Information Technology</h2></div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="../images/os.png" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="../bookpage/bookpage.jsp?id=1007">Operating Systems</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container" id="eee">
        <div class="col-md-12">
            <h2 class="text-left" id="title">Electronics & Electrical Engineering</h2></div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="../images/elec.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="../bookpage/bookpage.jsp?id=1003">Electrical Machines</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container" id="ece">
        <div class="col-md-12">
            <h2 class="text-left" id="title">Electronics & Communication Engineering</h2></div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="../images/ic.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="../bookpage/bookpage.jsp?id=1004">Integrated Circuits</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container" id="mech">
        <div class="col-md-12">
            <h2 class="text-left" id="title">Mechanical Engineering</h2></div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="../images/mech.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="../bookpage/bookpage.jsp?id=1005">Engineering Mechanics</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container" id="chemical">
        <div class="col-md-12">
            <h2 class="text-left" id="title">Chemical Engineering</h2></div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="../images/chem.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="../bookpage/bookpage.jsp?id=1008">Chemical Design</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container" id="bio-tech">
        <div class="col-md-12">
            <h2 class="text-left" id="title">Bio-Technology</h2></div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="../images/bio.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="../bookpage/bookpage.jsp?id=1010">Molecular Biotechnology</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container" id="civil" >
        <div class="col-md-12">
            <h2 class="text-left" id="title">Civil Engineering</h2></div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="../images/str.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="../bookpage/bookpage.jsp?id=1006">Strength of Materials</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                <div class="thumbnail"><img src="assets/img/wt.jpg" id="bookimg">
                    <div class="caption">
                        <p class="text-center" id="bookname"><span style="text-decoration: underline;"><a hRef="#"> web Technologies</a></span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/scroll.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>