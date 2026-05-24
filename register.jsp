<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="zh-TW">
<head>
<meta charset="UTF-8">
<title>註冊 - CYER</title>
<link rel="stylesheet" href="/CYER-main/style.css">

<style>
.register-box{
    max-width:500px;
    margin:80px auto;
    padding:40px;
    border:1px solid #ddd;
    background:white;
}
input, textarea, select{
    width:100%;
    padding:12px;
    margin:10px 0;
}
.btn{
    width:100%;
    padding:12px;
    background:#b8945a;
    color:white;
    border:none;
}
</style>
</head>

<body>
      <!-- HEADER + NAV -->
  <header class="site-header">
    <div class="header-top">
      <a href="index.html" class="brand-logo" style="text-decoration: none;">
        <span class="logo-text">CYER</span>
        <span class="logo-sub">— Electric House —</span>
      </a>
      <div class="header-icons">
        <a href="login.jsp" class="icon-btn" title="會員登入">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
            <circle cx="12" cy="8" r="4"/><path d="M4 20c0-4 3.6-7 8-7s8 3 8 7"/>
          </svg>
        </a>
        <a href="shopping_cart.jsp" class="icon-btn cart-btn" title="購物車">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
            <path d="M6 2L3 6v14a2 2 0 002 2h14a2 2 0 002-2V6l-3-4z"/><line x1="3" y1="6" x2="21" y2="6"/><path d="M16 10a4 4 0 01-8 0"/>
          </svg>
          <span class="cart-badge">0</span>
        </a>
      </div>
    </div>
    <nav class="main-nav">
      <ul class="nav-list">
        <li class="nav-item active"><a href="index.html">首頁</a><span class="nav-underline"></span></li>
        <li class="nav-item"><a href="refrigerator.html">冰箱</a><span class="nav-underline"></span></li>
        <li class="nav-item"><a href="air-purifier.html">空氣清淨機</a><span class="nav-underline"></span></li>
        <li class="nav-item"><a href="fan.html">電風扇</a><span class="nav-underline"></span></li>
        <li class="nav-item"><a href="hairdryer.html">吹風機</a><span class="nav-underline"></span></li>
        <li class="nav-item"><a href="dehumidifier.html">除濕機</a><span class="nav-underline"></span></li>
        <li class="nav-item"><a href="vacuum.html">吸塵器</a><span class="nav-underline"></span></li>
        <li class="nav-item"><a href="contact.html">聯絡我們</a><span class="nav-underline"></span></li>
        <li class="nav-item"><a href="login.jsp">會員中心</a><span class="nav-underline"></span></li>
        <li class="nav-item"><a href="shopping_cart.jsp">購物車</a><span class="nav-underline"></span></li>
      </ul>
    </nav>
  </header>

<div class="register-box">

<h2>會員註冊</h2>

<form action="register_process.jsp" method="post">

    <input name="name" placeholder="姓名" required>
    <input name="username" placeholder="帳號" required>
    <input type="password" name="password" placeholder="密碼" required>

    <input name="email" placeholder="Email">
    <input name="phone" placeholder="手機">
    <input name="address" placeholder="地址">

    <select name="role">
        <option value="member">會員</option>
        <option value="admin">管理員</option>
    </select>

    <button class="btn">註冊</button>

</form>

<br>

<a href="login.jsp">已經有帳號？登入</a>

</div>

</body>
</html>