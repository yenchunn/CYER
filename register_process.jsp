<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%
    String name = request.getParameter("name");
    String username = request.getParameter("username");

    // ⚠️目前不接DB，只做模擬
    if(username != null){
        session.setAttribute("user", username);
        session.setAttribute("role", "member");
%>

<script>
alert("註冊成功！");
location.href="member.jsp";
</script>

<%
    } else {
%>

<script>
alert("註冊失敗");
location.href="register.jsp";
</script>

<%
    }
%>