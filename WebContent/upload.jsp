<%@page import="java.io.*, java.sql.*"%>
<h6 align="left"><a href="loginprocess.jsp">*PREVIOUS-PAGE*</a></h6>
<h6 align="left"><a href="index.jsp">*HOME-PAGE*</a></h6>
<%

String saveFile="";
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
saveFile="C:/gaurav/"+saveFile;
File f = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(f);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
%><br/><br/>
    <h4 align="center"><b>You have successfully upload the file by the name of:</b> 
     <%
 out.println(saveFile);
   }
%></h4>
   <br/> <br/> <h3 align="center" ><a href="view.jsp">View Files</a> </h3>