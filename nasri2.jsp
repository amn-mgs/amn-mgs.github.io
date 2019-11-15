<%-- 
    Document   : nasri2
    Created on : Nov 4, 2019, 4:58:11 PM
    Author     : amnal
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        out.println("my name here is: "+session.getAttribute("theName")+"<br>");
        out.print("my phone attribute from the pageContext.sessionscope is "+pageContext.getAttribute("phone2",PageContext.SESSION_SCOPE)+"<br>" );
        %>
        <a href="nasri.jsp">nasri</a>
        <h1>Hello World!</h1>
        
    </body>
</html>
