<%@ page import="java.io.*"%>
<%@page import="bean.LoginDao"%>  
<jsp:useBean id="obj" class="bean.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  

<!DOCTYPE html>
<html lang="en">
<head>
    <title>view.jsp</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

</body>

<h6 align="left"><a href="login.jsp">*PREVIOUS-PAGE*</a></h6>
<h6 align="left"><a href="index.jsp">*HOME-PAGE*</a></h6>
 
 <h3 align="center">LINKS TO UPLOAD AND DOWNLOAD FILES</h3><br/>
 <FORM ENCTYPE="multipart/form-data" ACTION="upload.jsp" METHOD=POST>
<br/>
<br/>
<div class="container">
<center>
<table >
    <thead>
      <tr>
            
            <td colspan="100%"align="center"><B>UPLOAD THE FILE</B>
            
            </td>
            
      </tr>
      <tr class="blank_row">
            <td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
        </tr>
      <thead>
     
      <tbody>
      <tr></tr>
      <tr>
            <td><b>Choose the file To Upload:</b></td>
            <td><INPUT NAME="file" TYPE="file"></td>
      </tr>
      <tr class="blank_row">
            <td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
        </tr>
      <tr>
            <td colspan="100%"align="center"><input type="submit"
                  value="Send File"></td>
      </tr>
      </tbody>
      </table>
            </center>
            
           </div>
              
            </FORM>
            
<p align="center">
 <div class="container">
<table class="table table-striped">
<thead><tr><th align="left">File Name</th><th>Download File</th> </tr></thead>
<br/>
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<%
File f = new File("C:/gaurav");
        File[] files = f.listFiles();
        for(int i=0;i<files.length;i++){
            String name=files[i].getName();
            String path=files[i].getPath();
%>


<tbody><tr><td><%=name%></td><td><a href="download.jsp?f=<%=path%>">Download File</a></td></tr></tbody>
 
     <%
        }
%>
</table></div></p>
    
 <%-- <p align="center">
 <a href="uploadfileindex.jsp">UPLOAD FILE</a><br/><br/>
 <a href="downloadfileindex.jsp">DOWNLOAD FILE</a>
 </p> --%>
 <%-- code for checking authorized user from database
<p align="center"> 

  <%  
boolean status=LoginDao.validate(obj);  
if(status){  
out.println("You r successfully logged in");  
session.setAttribute("session","TRUE");  
}  
else  
{  
out.print("<h1>Sorry, email or password error</h1>");  

}  
%>

</p> 
--%>
</body>
</html>