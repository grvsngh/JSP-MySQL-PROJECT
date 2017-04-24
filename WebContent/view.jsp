<%@ page import="java.io.*"%>
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
<body>
<h6 align="left"><a href="upload.jsp">*PREVIOUS-PAGE*</a></h6>
<h6 align="left"><a href="index.jsp">*HOME-PAGE*</a></h6>
<p align="center">
 <div class="container">
<table class="table table-striped">
<thead><tr>
<th align="left">File Name</th><th>Download File</th> 
</tr>
 </thead>

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
</table>
</div>
</p>
</body>
</html>