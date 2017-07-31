<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*"%>
<%

 Connection con= null;
 //ResultSet rs = null;
 String userid=(String)session.getAttribute("userid");
 String name=request.getParameter("name");
 String email=request.getParameter("email");
 String mobile=request.getParameter("mobile");
 String pwd=request.getParameter("pwd");
 String pwd1=request.getParameter("pwd1");
 String branch=request.getParameter("branch");
 String one="1";

 int updateQuery=0;
 
 if( (name!=null || name!="") && (email!=null || 
    email!="") && (mobile!=null || mobile!="") && (pwd!=null || pwd!="") && (pwd1!=(null) || pwd1!="") ) 
 {
  try{
      Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root","sunny");
      String sql="insert into studentdetails(userid,sname,email,mobile,branch) values (?,?,?,?,?)";
      PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1,userid);
                ps.setString(2,name);
                ps.setString(3,email);
                ps.setString(4,mobile);
                ps.setString(5,branch);
                updateQuery=ps.executeUpdate();



     String psql="update stud set password=?,login=? where userid=?"; 
     PreparedStatement p=con.prepareStatement(psql);
                p.setString(1,pwd);
                p.setString(2,one);
                p.setString(3,userid);
                updateQuery=p.executeUpdate();
        
                response.sendRedirect("../dashboard/dashboard.jsp");

    }
    catch(Exception sqe)
        {
                out.println(sqe);
        } 
 } 

  else
    {
%>
<center><p style="color:red">Error In Login</p></center>
<% 
        getServletContext().getRequestDispatcher("/index.jsp").include(request,response);
    }
%>