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
    <title>C:\Users\Sri\Desktop\bs\bookpage\bookpage</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/user.css">
    <link rel="stylesheet" href="assets/bootstrap/fonts/font-awesome.min.css">
</head>

<body>
<%!
String bname;
String bid;
String author;
String branch;
String isbn;
int pg;
int cp;
String path;
%>
<%
    Connection con= null;
        ResultSet rs=null;
        bid=request.getParameter("id");
         try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root","sunny");
                 String sql="select * from books where id=?";
                 PreparedStatement ps = con.prepareStatement(sql);
                 ps.setString(1,bid);
                 rs=ps.executeQuery();
                 if(rs.next())
                 {
                 bname=rs.getString("name");
                 author=rs.getString("author");
                 branch=rs.getString("branch");
                 isbn=rs.getString("isbn");
                 pg=rs.getInt("pages");
                 cp=rs.getInt("copies");
                 path=rs.getString("path");
                 request.setAttribute("path",path);
                 }     
            }

        catch(Exception sqe)
            {
                out.println(sqe);
             }             


%>

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
                    <li class="active" role="presentation"><a href="../index.html#sec01">Collection </a></li>
                    <li role="presentation"><a href="../index.html#sec02">Branches </a></li>
                    <li role="presentation"></li>
                    <li role="presentation"><a href="../index.html">About Us</a></li>
                    <li role="presentation"><a href="../login/login.html">Login </a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div id="heading"></div>
    <h1> <span class="fa fa-book"></span> Book Info</h1>
    <div></div>
    <div class="container-fluid">
        <div class="row">
            
            <div class="col-md-5">
                <div class="thumbnail"><img src="${path}">
                    <div class="caption">
                        <h3 id="book-heading"><% out.println(bname); %></h3></div>
                </div>
            </div>

            <div class="col-md-7">
                <div><span id="head" class="head">BOOK NAME</span>
                    <p class="content"><% out.println(bname); %></p>
                </div>
                <div><span class="head">BOOK ID</span>
                    <p class="content"><% out.println(bid); %></p>
                </div>
                <div><span class="head">AUTHOR(S)</span>
                    <p class="content"><% out.println(author); %></p>
                </div>
                <div><span class="head">BRANCH </span>
                    <p class="content"><% out.println(branch); %></p>
                </div>
                
                <div><span class="head">ISBN </span>
                    <p class="content"><% out.println(isbn); %></p>
                </div>
                <div><span class="head">PAGES </span>
                    <p class="content"><% out.println(pg); %></p>
                </div>
                <div><span class="head">AVAILABLE COPIES </span>
                    <p class="content"><% out.println(cp); %></p>
                </div>
            </div>
        </div>
    </div>
    
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>