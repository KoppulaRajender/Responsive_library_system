<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<html><head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Dashboard Template for Bootstrap</title>
        <!-- Bootstrap core CSS -->
        <link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <!-- Custom styles for this template -->
        <link href="assets/css/dashboard.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media
        queries -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
    <%!
    String name;
        String branch;
        String mobile;
        String email;
        String userid;
        int[] bid=new int[4];
        String[] bnames=new String[4];
        String[] idate=new String[4];
        String[] ldate=new String[4];
        int[] days=new int[4];
        int[] fine=new int[4];
    %>
    <%
        Connection con= null;
        ResultSet rs=null;
        
         userid=(String)session.getAttribute("userid");
         try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root","sunny");
                 String sql="select * from studentdetails where userid=?";
                 PreparedStatement ps = con.prepareStatement(sql);
                 ps.setString(1,userid);
                 rs=ps.executeQuery();
                 if(rs.next())
                 {
                 name=rs.getString("sname");
                 mobile=rs.getString("mobile");
                 email=rs.getString("email");
                 branch=rs.getString("branch");
                 }

            }

         catch(Exception sqe)
            {
                out.println(sqe);
             } 
     
        ResultSet rs1=null;
        ResultSet rs2=null;
        try
        {
          String sql1="select b1,b2,b3,b4,d1,d2,d3,d4,datediff(current_date(),d1),datediff(current_date(),d2),datediff(current_date(),d3),datediff(current_date(),d4),date_add(d1,interval 15 day),date_add(d2,interval 15 day),date_add(d3,interval 15 day),date_add(d4,interval 15 day) from lib.issued where userid=?";
          String sql2="select * from books where id=?";
          PreparedStatement ps1=con.prepareStatement(sql1);
          PreparedStatement ps2=con.prepareStatement(sql2);

          ps1.setString(1,userid);
          ps1.executeQuery();
          rs1=ps1.executeQuery();
          if(rs1.next())
          {
            for(int j=1,i=0;j<=4;j++,i++)
           {
            //bid[0]=rs1.getInt("b1");
            //bid[1]=rs1.getInt("b2");
            //bid[2]=rs1.getInt("b3");
             //bid[3]=rs1.getInt("b4");
            bid[i]=rs1.getInt(j);
           }
           //idate[0]=rs1.getString("d1");
            for(int j=5,i=0;j<=8;j++,i++)
            {
             idate[i]=rs1.getString(j);
            }

            for(int j=9,i=0;j<=12;j++,i++)
            {
             days[i]=rs1.getInt(j);
             if(days[i]>15)
             fine[i]=(days[i]-15)*2;
            }

            for(int j=13,i=0;j<=16;j++,i++)
            {
             ldate[i]=rs1.getString(j);
            }

            for(int i=0;i<4;i++)
            {
             rs2=null;
              ps2.setInt(1,bid[i]);
              rs2=ps2.executeQuery();
              rs2.next();
              bnames[i]=rs2.getString("name");
             }
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
                      <li role="presentation"></li>
                      <li role="presentation"><a href="#">About Us</a></li>
                      <li role="presentation" class="active"><a href="#">Dashboard </a></li>
                  </ul>
              </div>
          </div>
      </nav>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li class="active">
                            <a href="#">Overview <span class="sr-only">(current)</span></a>
                        </li>
                        <li>
                            <a href="#details">View My Books&nbsp;</a>
                        </li>
                        
                        
                    
                        <li>
                            <a href="./logout.jsp">Logout</a>
                        </li>

                    


                    </ul>

                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                    <h1 class="page-header">Student Dashboard</h1>
                    <div class="placeholders row">
                            <div class="col-xs-4 placeholder text-center">
                            <img src="assets/img/avatar_2x.png" class="img-responsive" alt="Generic placeholder thumbnail">
                            <h4><% out.println(name); %></h4>
                            <span class="text-muted">(<% out.println(userid); %>)</span>
                            </div>
                    <div class="col-xs-8">
                      <ul class="lead list-group text-center">
                        <li class="list-group-item"><% out.println(userid); %></li>
                        <li class="list-group-item"><% out.println(name); %></li>
                        <li class="list-group-item"><% out.println(branch); %></li>
                        <li class="list-group-item"><% out.println(mobile); %></li>
                        <li class="list-group-item"><% out.println(email); %></li>
                      </ul>
                    </div>
                  </div>

                  <section id="details">
                    <h2 class="sub-header">Book Details</h2>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Book</th>
                                    <th>Date of Issue</th>
                                    <th>Last Date&nbsp;</th>
                                    <th>Fine</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><% out.println(bid[0]); %></td>
                                    <td><% out.println(bnames[0]); %></td>
                                    <td><% out.println(idate[0]); %></td>
                                    <td><% out.println(ldate[0]); %></td>
                                    <td><% out.println(fine[0]); %></td>
                                </tr>



                                <tr>
                                    <td><% out.println(bid[1]); %></td>
                                    <td><% out.println(bnames[1]); %></td>
                                    <td><% out.println(idate[1]); %></td>
                                    <td><% out.println(ldate[1]); %></td>
                                    <td><% out.println(fine[1]); %></td>
                                </tr>




                                <tr>
                                    <td><% out.println(bid[2]); %></td>
                                    <td><% out.println(bnames[2]); %></td>
                                    <td><% out.println(idate[2]); %></td>
                                    <td><% out.println(ldate[2]); %></td>
                                    <td><% out.println(fine[2]); %></td>
                                </tr>
                                <tr>
                                    <td><% out.println(bid[3]); %></td>
                                    <td><% out.println(bnames[3]); %></td>
                                    <td><% out.println(idate[3]); %></td>
                                    <td><% out.println(ldate[3]); %></td>
                                    <td><% out.println(fine[3]); %></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                  </section>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JavaScript==================================================-
        ->
    <!-- Placed at the end of the document so the pages load faster -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="assets/js/ie10-viewport-bug-workaround.js"></script>


</body></html>
