<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // ⚠️先用假驗證（之後再接DB）
    if(username != null && password != null && username.equals("admin")){
        session.setAttribute("user", username);
        session.setAttribute("role", "member");

        response.sendRedirect("member.jsp");
    } else {
%>

<script>
alert("登入失敗（目前為Demo驗證）");
location.href="login.jsp";
</script>

<%
    }
%>s