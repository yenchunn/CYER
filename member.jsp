<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    boolean login = true;
%>

<!DOCTYPE html>
<html lang="zh-TW">
<head>
<meta charset="UTF-8">
<title>會員中心 - CYER</title>
<link rel="stylesheet" href="/CYER-main/style.css">

<style>

.member-wrapper{
    max-width:1200px;
    margin:80px auto;
    display:grid;
    grid-template-columns:260px 1fr;
    gap:40px;
}

/* Sidebar（升級成精品風） */
.member-menu{
    background: var(--warm-white);
    border: 1px solid var(--border);
    padding: 25px;
    position: sticky;
    top: 120px;
    box-shadow: 0 10px 30px var(--shadow);
}

.member-menu a{
    display:block;
    padding:14px 12px;
    text-decoration:none;
    color:var(--charcoal);
    border-bottom:1px solid var(--light-grey);
    transition:0.3s;
    font-family:'Cormorant Garamond', serif;
    letter-spacing:0.08em;
}

.member-menu a:hover{
    color:var(--gold);
    padding-left:18px;
}

/* 右側內容變精品卡片 */
.member-content{
    background: var(--warm-white);
    border: 1px solid var(--border);
    padding: 50px;
    position: relative;
    box-shadow: 0 10px 40px var(--shadow);
}

/* 上方金色線條 */
.member-content::before{
    content:'';
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:3px;
    background: linear-gradient(
        to right,
        var(--gold-dark),
        var(--gold-light)
    );
}

/* info card 升級 */
.info-box{
    padding:22px;
    border:1px solid var(--border);
    margin-bottom:18px;
    background:white;
    transition:0.3s;
}

.info-box:hover{
    transform: translateY(-3px);
    box-shadow: 0 8px 25px var(--shadow);
}
/* ===== Sections ===== */
.section{
    display:none;
    animation:fade .4s ease;
}

.section.active{
    display:block;
}

@keyframes fade{
    from{opacity:0; transform:translateY(10px);}
    to{opacity:1; transform:translateY(0);}
}

/* ===== Inputs ===== */
input, textarea{
    width:100%;
    padding:12px;
    margin:8px 0;
    border:1px solid #ddd;
    font-family:'Noto Serif TC', serif;
}

select{
    width:100%;
    padding:12px;
    border:1px solid #ddd;
}

/* ===== Buttons ===== */
.btn{
    padding:12px 26px;
    background:var(--gold);
    color:white;
    border:none;
    cursor:pointer;
    letter-spacing:0.1em;
    transition:0.3s;
}

.btn:hover{
    background:var(--gold-dark);
}

/* ===== Cards ===== */
.info-box{
    padding:20px;
    border:1px solid var(--border);
    margin-bottom:15px;
}

.badge{
    display:inline-block;
    padding:4px 10px;
    font-size:12px;
    background:var(--gold);
    color:white;
}

.page-hero {
      background: linear-gradient(135deg, #2C2825 0%, #3E3530 50%, #2C2825 100%);
      padding: 72px 60px 60px;
      text-align: center;
      position: relative;
      overflow: hidden;
}
    .page-hero::before {
      content: '';
      position: absolute;
      inset: 16px;
      border: 1px solid rgba(184,148,90,0.2);
      pointer-events: none;
    }
    .page-hero-fr {
      font-family: 'Cormorant Garamond', serif;
      font-size: 0.72rem;
      letter-spacing: 0.4em;
      color: var(--gold-light);
      text-transform: uppercase;
      margin-bottom: 12px;
    }
    .page-hero-title {
      font-family: 'Playfair Display', serif;
      font-size: 3rem;
      font-weight: 400;
      color: var(--warm-white);
      margin-bottom: 12px;
      letter-spacing: 0.05em;
    }
    .page-hero-sub {
      font-family: 'Noto Serif TC', serif;
      font-size: 0.85rem;
      color: rgba(249,245,239,0.6);
      letter-spacing: 0.12em;
    }
    .hero-ornament {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 12px;
      margin: 20px auto 0;
    }
    .hero-ornament-line {
      width: 60px; height: 1px;
      background: linear-gradient(to right, transparent, var(--gold));
    }
    .hero-ornament-diamond {
      width: 6px; height: 6px;
      background: var(--gold);
      transform: rotate(45deg);
    }

/* ===== Warning ===== */
.notice{
    background:#fff6e5;
    border-left:3px solid var(--gold);
    padding:12px;
    margin-bottom:20px;
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
        <p class="page-hero-fr">member center</p>
        <h1 class="page-hero-title">會員中心</h1>
        <p class="page-hero-sub">管理您的帳號、訂單與收藏</p>
    
        <div class="hero-ornament">
        <div class="hero-ornament-line"></div>
        <div class="hero-ornament-diamond"></div>
        <div class="hero-ornament-line" style="transform:scaleX(-1)"></div>
        </div>
    </section>

<%

if(!login){
%>

<!-- 未登入 -->
<div class="notice" style="max-width:800px;margin:40px auto;">
    ⚠️ 您尚未登入，請先登入以使用會員功能
    <br><br>
    <a class="btn" href="login.jsp">前往登入</a>
    <a class="btn" href="register.jsp">立即註冊</a>
</div>

<%
} else {
%>

<div class="member-wrapper">

    <!-- SIDEBAR -->
    <div class="member-menu">

        <a href="#" onclick="show('profile')">會員資料</a>
        <a href="#" onclick="show('orders')">我的訂單</a>
        <a href="#" onclick="show('favorites')">我的收藏</a>
        <a href="shopping_cart.jsp">購物車</a>
        <a href="#" onclick="show('password')">修改密碼</a>

        <a href="logout.jsp" style="color:red;">登出</a>

    </div>

    <!-- CONTENT -->
    <div class="member-content">

        <!-- PROFILE -->
        <div id="profile" class="section active">

            <h2>會員資料</h2>

            <div class="info-box">
                <p><b>會員編號：</b>100001</p>
                <p><b>Email：</b>member@gmail.com</p>
                <p><b>姓名：</b>王小明</p>
                <p><b>電話：</b>0912345678</p>
                <p><b>地址：</b>台北市信義區市府路1號</p>
                <p><b>身分：</b>一般會員</p>
            </div>

            <div class="notice">
                歡迎回來，
                王小明會員 👋
                <br>
                您目前共有 2 筆訂單，
                3 項收藏商品。
                </div>

            <h3>修改資料</h3>

            <form>

                <label>Email (登入帳號)</label>
                <input type="email"
                       value="member@gmail.com">
                
                <label>姓名</label>
                <input type="text"
                       value="王小明">
                
                <label>手機</label>
                <input type="text"
                       value="0912345678">
                
                <label>地址</label>
                <input type="text"
                       value="台北市信義區市府路1號">
                
                <button type="button"
                        class="btn">
                        儲存修改
                </button>
                
            </form>

        </div>

        <!-- ORDERS -->
        <div id="orders" class="section">

            <h2>我的訂單</h2>

            <div class="info-box">
                <p>訂單 #CY2026001</p>
                <span class="badge">已出貨</span>
                <p>空氣清淨機 NT$12,900</p>
            </div>

            <div class="info-box">
                <p>訂單 #CY2026002</p>
                <span class="badge">處理中</span>
                <p>冰箱 NT$29,900</p>
            </div>

        </div>

        <!-- FAVORITES -->
        <div id="favorites" class="section">

            <h2>我的收藏</h2>

            <div class="info-box">
                <p>CYER Air Purifier</p>
                <p>NT$12,900</p>
            </div>

        </div>

        <!-- PASSWORD -->
        <div id="password" class="section">

            <h2>修改密碼</h2>

            <form>

                <input type="password"
                       placeholder="輸入目前密碼">
                
                <input type="password"
                       placeholder="輸入新密碼">
                
                <input type="password"
                       placeholder="再次確認新密碼">
                
                <button type="button"
                        class="btn">
                        更新密碼
                </button>
                
            </form>

        </div>

    </div>

</div>

<%
}
%>

<script>
function show(id){
    document.querySelectorAll('.section')
        .forEach(s => s.classList.remove('active'));

    document.getElementById(id).classList.add('active');
}
</script>

</body>
</html>