<%-- 
    Document   : nasri
    Created on : Nov 3, 2019, 5:37:08 PM
    Author     : amnal
--%>

<html>

    <body>
        <h1>Hello jsp!!</h1>

        <!--scriptlet tag-->
        <%
            String name = request.getParameter("fn");
            out.println("ali " + name);

//            session.setAttribute("theName", request.getParameter("fn"));
%>
        <br>
        <!--expression tag-->
        <%="ali MOhammed Nasri " + request.getParameter("fn")%>        
        <br>
        <%=java.util.Calendar.getInstance().getTime()%>        

        <!--decleartion tag-->
        <%!
            int n = 2;

            void sum() {
                n = n + 2;
            }
        %>
        <br>
        <a href="nasri2.jsp">nasri2</a>
        <br>
        <%
            //used to save session parameter by programming
            if (session.getAttribute("theName") != null) {
                out.print(session.getAttribute("theName")+"<br>");
            }
            session.setAttribute("theName", request.getParameter("fn"));
            pageContext.setAttribute("phone2", request.getParameter("phone"), PageContext.SESSION_SCOPE);
            out.print("the phone request parameter is " + request.getParameter("phone"));
        %>
        <!--used to import class and interfaceses and libs--> 
        <%@page import="java.util.*" %>
        <!--page directive which change  the page to pdf viwer-->
        <!--IMPORTANT TO KNOW OTHER TYPE-->
        <%--<%@page contentType="application/pdf" %>--%>
        <!--to tell an info about the page-->
        <%@page info="this page was made by amn" %>

        <!--buffer size for page default 8kb-->
        <%--<%@page buffer="24kb" %>--%>

        <!--direct user to specfic local page when error occured-->
        <%--<%@page errorPage="index.html" %>--%>
        <%--<%= 1/0%>--%>

        <!--to check the page if have error or not, boolean return-->
        <%--<%@page isErrorPage="true" %>--%>

        <!--when can use exception handling, but he didn't say how-->
        <%--<%= exception %>--%>
        
        <!--used to include file ex.used to call function in other file ,to reduce resources-->
        <%--<%@include file="index.html" %>--%>
        <!--or (not tested)-->
        <%--<jsp:include page="nasri2.jsp" />--%>
         
        <!--forward to a page but still in the current page-->
        <jsp:forward page="requestobj.jsp">
        <jsp:param name="para" value="para from req"/>
        </jsp:forward>

    </body>
</html>
