<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome <%=session.getAttribute("name")%></title>
<link rel="stylesheet" href="CSS/style.css" type="text/css">
</head>
<body>
    <h3>Login successful!!!</h3>
    <h4>
        Hello,
        <%=session.getAttribute("name")%></h4>
        
        <form action="welcome.jsp" method="post">
 <div align="center">
<table border="1" cellpadding="5">
            <caption><h2>List of Jobs</h2></caption>
<tr>
<th>jod Id</th>
<th>sequence<th>
<th>DueDate</th>
<th>Category</th>
</tr> 
<%

  List list = app4rUser.TechDetails.GetTechDetails();
  int id = 0;
  String box = null;

  Iterator<String> it = list.iterator();

  while (it.hasNext()) {
      id = Integer.parseInt(it.next());
      out.print("<tr>");
      for (int i = 0; i < 4; i++) {
          out.print("<td>");
          out.print(it.next());
          out.print("</td>");
  }
  out.print("<td>");
  box = "<input name=r" + id + " type='checkbox'>";
  out.print(box);
  out.print("</td>");
  out.print("</tr>");
 }
%>
 
</table>
</div>
<br>
<input type="submit" value="Submit">

</form>
</body>
</html>