<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-TW">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>購物車 - CYER</title>

<link rel="stylesheet" href="style.css">

<style>

/* ===== HERO ===== */

.page-hero{
    background:linear-gradient(
        135deg,
        #2C2825 0%,
        #3E3530 50%,
        #2C2825 100%
    );

    padding:70px 60px;
    text-align:center;
}

.page-hero-fr{
    color:var(--gold-light);
    letter-spacing:0.35em;
    text-transform:uppercase;
    margin-bottom:10px;
    font-size:0.75rem;
}

.page-hero-title{
    color:white;
    font-size:3rem;
    font-family:'Playfair Display',serif;
    margin-bottom:10px;
}

.page-hero-sub{
    color:rgba(255,255,255,.7);
}

/* ===== CART ===== */

.cart-wrapper{
    max-width:1200px;
    margin:60px auto;
    display:grid;
    grid-template-columns:2fr 1fr;
    gap:30px;
}

/* 商品區 */

.cart-list{
    display:flex;
    flex-direction:column;
    gap:20px;
}

.cart-item{
    background:white;
    border:1px solid var(--border);
    padding:20px;

    display:grid;
    grid-template-columns:
        120px
        1fr
        150px
        120px
        80px;

    align-items:center;
    gap:20px;
}

.cart-image{
    width:120px;
    height:120px;
    background:#eee;
}

.cart-info h3{
    margin-bottom:10px;
}

.cart-price{
    color:var(--gold-dark);
    font-weight:bold;
}

.quantity-box{
    display:flex;
    align-items:center;
    justify-content:center;
    gap:10px;
}

.quantity-btn{
    width:35px;
    height:35px;
    border:none;
    background:var(--gold);
    color:white;
    cursor:pointer;
}

.quantity-input{
    width:50px;
    text-align:center;
    padding:6px;
}

.subtotal{
    font-weight:bold;
}

.delete-btn{
    border:none;
    background:#d9534f;
    color:white;
    padding:8px 12px;
    cursor:pointer;
}

/* ===== Summary ===== */

.cart-summary{
    background:white;
    border:1px solid var(--border);
    padding:30px;
    height:fit-content;
}

.cart-summary h2{
    margin-bottom:25px;
}

.summary-row{
    display:flex;
    justify-content:space-between;
    margin-bottom:15px;
}

.total{
    border-top:1px solid var(--border);
    padding-top:15px;
    margin-top:15px;

    font-size:1.3rem;
    font-weight:bold;
}

.checkout-btn{
    width:100%;
    margin-top:25px;
    padding:14px;

    border:none;

    background:var(--gold);
    color:white;

    cursor:pointer;

    font-size:1rem;
}

.checkout-btn:hover{
    background:var(--gold-dark);
}

.continue-btn{
    width:100%;
    margin-top:10px;

    padding:14px;

    background:white;

    border:1px solid var(--gold);

    color:var(--gold);

    cursor:pointer;
}

.continue-btn:hover{
    background:#faf7f2;
}

/* ===== Mobile ===== */

@media(max-width:900px){

.cart-wrapper{
    grid-template-columns:1fr;
}

.cart-item{
    grid-template-columns:1fr;
    text-align:center;
}

.cart-image{
    margin:auto;
}

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

    <p class="page-hero-fr">
        shopping cart
    </p>

    <h1 class="page-hero-title">
        購物車
    </h1>

    <p class="page-hero-sub">
        CART DE CYER
    </p>

</section>

<!-- CART -->

<div class="cart-wrapper">

    <!-- LEFT -->

    <div class="cart-list">

        <!-- 商品1 -->

        <div class="cart-item">

            <div class="cart-image"></div>

            <div class="cart-info">

                <h3>
                    CYER Premium Air Purifier
                </h3>

                <p>
                    高效HEPA濾網空氣清淨機
                </p>

            </div>

            <div class="cart-price">
                NT$12,900
            </div>

            <div class="quantity-box">

                <button class="quantity-btn">
                    -
                </button>

                <input
                    class="quantity-input"
                    value="1">

                <button class="quantity-btn">
                    +
                </button>

            </div>

            <div>

                <div class="subtotal">
                    NT$12,900
                </div>

                <button class="delete-btn">
                    刪除
                </button>

            </div>

        </div>

        <!-- 商品2 -->

        <div class="cart-item">

            <div class="cart-image"></div>

            <div class="cart-info">

                <h3>
                    CYER Smart Fan
                </h3>

                <p>
                    智慧節能電風扇
                </p>

            </div>

            <div class="cart-price">
                NT$4,990
            </div>

            <div class="quantity-box">

                <button class="quantity-btn">
                    -
                </button>

                <input
                    class="quantity-input"
                    value="2">

                <button class="quantity-btn">
                    +
                </button>

            </div>

            <div>

                <div class="subtotal">
                    NT$9,980
                </div>

                <button class="delete-btn">
                    刪除
                </button>

            </div>

        </div>

    </div>

    <!-- RIGHT -->

    <div class="cart-summary">

        <h2>訂單摘要</h2>

        <div class="summary-row">
            <span>商品總額</span>
            <span>NT$22,880</span>
        </div>

        <div class="summary-row">
            <span>運費</span>
            <span>NT$0</span>
        </div>

        <div class="summary-row total">
            <span>總計</span>
            <span>NT$22,880</span>
        </div>

        <button
            class="checkout-btn"
            onclick="location.href='checkout.jsp'">

            下一步結帳

        </button>

        <button
            class="continue-btn"
            onclick="location.href='index.html'">

            繼續購物

        </button>

    </div>

</div>

</body>
</html>