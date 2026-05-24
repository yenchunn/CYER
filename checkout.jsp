<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    String user = (String) session.getAttribute("user");
    boolean login = (user != null);
%>

<!DOCTYPE html>
<html lang="zh-TW">
<head>
<meta charset="UTF-8">
<title>結帳 - CYER</title>
<link rel="stylesheet" href="style.css">

<style>

/* ===== LAYOUT ===== */
.checkout-wrapper{
    max-width:1000px;
    margin:80px auto;
    display:grid;
    grid-template-columns:1.5fr 1fr;
    gap:30px;
}

/* ===== BOX ===== */
.box{
    background:white;
    border:1px solid var(--border);
    padding:25px;
}

/* ===== FORM ===== */
input, select{
    width:100%;
    padding:12px;
    margin:10px 0;
    border:1px solid #ddd;
}

.btn{
    width:100%;
    padding:12px;
    background:var(--gold);
    color:white;
    border:none;
    cursor:pointer;
}

.btn:hover{
    background:var(--gold-dark);
}

/* ===== NOTICE ===== */
.notice{
    background:#fff6e5;
    padding:12px;
    border-left:3px solid var(--gold);
}

.summary p{
    margin:8px 0;
}

.checkout-btn {
    width: 100%;
    margin-top: 25px;
    padding: 14px;

    background: transparent;
    border: 1px solid var(--gold);
    color: var(--gold-dark); /* 改這裡才看得清楚 */

    font-family: 'Cormorant Garamond', serif;
    letter-spacing: 0.2em;
    text-transform: uppercase;

    cursor: pointer;
    transition: 0.3s;

    position: relative;
    overflow: hidden;
}
/* 金色滑入效果 */
.checkout-btn::before {
    content: '';
    position: absolute;
    inset: 0;
    background: var(--gold);

    transform: scaleX(0);
    transform-origin: left;
    transition: transform 0.35s ease;

    z-index: 0;
}

.checkout-btn:hover::before {
    transform: scaleX(1);
}

.checkout-btn span {
    position: relative;
    z-index: 2;
}

.checkout-btn:hover {
    color: white;
}

.page-hero{
    background: linear-gradient(
        135deg,
        #2C2825 0%,
        #3E3530 50%,
        #2C2825 100%
    );

    padding: 70px 60px;
    text-align: center;
}

.page-hero-fr{
    color: var(--gold-light);
    letter-spacing: 0.35em;
    text-transform: uppercase;
    margin-bottom: 10px;
    font-size: 0.75rem;
}

.page-hero-title{
    color: white;
    font-size: 3rem;
    font-family: 'Playfair Display', serif;
    margin-bottom: 10px;
}

.page-hero-sub{
    color: rgba(255,255,255,.7);
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

<!-- HERO -->
<section class="page-hero">
    <p class="page-hero-fr">checkout</p>
    <h1 class="page-hero-title">結帳</h1>
    <p class="page-hero-sub">CART DE CYER</p>
</section>

<% if(!login){ %>

<div class="notice" style="max-width:800px;margin:40px auto;">
    ⚠️ 請先登入才能結帳
    <br><br>
    <a class="btn" href="login.jsp">前往登入</a>
</div>

<% } else { %>

<div class="checkout-wrapper">

    <!-- LEFT: FORM -->
    <div class="box">

        <h2>收件資訊</h2>

        <form action="order_success.jsp" method="post">

            <label>收件人姓名</label>
            <input type="text" name="name" required>

            <label>電話</label>
            <input type="text" name="phone" required>

            <label>Email</label>
            <input type="email" name="email" value="<%= user %>" required>

            <label>地址</label>
            <input type="text" name="address" required>

            <label>付款方式</label>
            <select name="payment">
                <option>貨到付款</option>
                <option>ATM轉帳</option>
            </select>

            <button class="checkout-btn" type="submit">
                <span>確認下單</span>
            </button>

        </form>

    </div>

    <!-- RIGHT: SUMMARY -->
    <div class="box summary">

        <h2>訂單摘要</h2>

        <p>冰箱 ×1：NT$29,900</p>
        <p>空氣清淨機 ×2：NT$25,800</p>

        <hr>

        <p><b>總金額：NT$55,700</b></p>

    </div>

</div>

<% } %>

</body>
</html>