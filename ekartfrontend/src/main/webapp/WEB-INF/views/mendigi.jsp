<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<style>
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}
.fa {
    font-size: 50px;
    cursor: pointer;
    user-select: none;
}

.fa:hover {
  color: darkblue;
}

</style>

</head>
<body style="background-color: black;">
<jsp:include page="navigation.jsp"></jsp:include>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="resources/data1/images/gsporty.jpg" alt="Jane" style="width:100%;height:400px">
      <div class="container" style="background-color: #FFC9C9;width: 100%">
        <h2>G-sport G485<br>price:11,495</h2>
        <p class="title">G-Sport Digital Watch - For Men</p>
        <p>Mineral Glass Shock Resistant and 200-meter water resistance Case</p>
        <p>*rupees776/month EMI</p>
        <input type="checkbox" name="giftwrap" value="giftpack">Add gift wrap
        <p><button class="button"style="width: 40%">Buy<br><div id="div1" class="fa" style="font-size: 20px"></div></button></p>
        <script>
function hand() {
  var a;
  a = document.getElementById("div1");
  a.innerHTML = "&#xf25a;";
  setTimeout(function () {
      a.innerHTML = "&#xf256;";
    }, 500);
  setTimeout(function () {
      a.innerHTML = "&#xf256;";
    }, 600);
}
hand();
setInterval(hand, 1000);
</script>
<h1>vote here:<i onclick="myFunction(this)" class="fa fa-thumbs-up"></i>

<script>
function myFunction(x) {
    x.classList.toggle("fa-thumbs-down");
}
</script></h1>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="resources/data1/images/ironman.jpg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #8E9495;width: 100%">
        <h2>Timex TW4B03000<br>price:6,870</h2>
        <p class="title">Timex Digital Watc-For Men</p>
        <p>The hydra mode lets you set alarms for drinking water at intervals to keep you hydrated.</p>
        <p>*rupees334/month EMI</p>
        <input type="checkbox" name="giftwrap" value="giftpack">Add gift wrap
        <p><button class="button"style="width: 40%">Buy<br><div id="div2" class="fa"style="font-size: 20px"></div></button></p>
        <script>
function hand() {
  var a;
  a = document.getElementById("div2");
  a.innerHTML = "&#xf25a;";
  setTimeout(function () {
      a.innerHTML = "&#xf256;";
    }, 500);
  setTimeout(function () {
      a.innerHTML = "&#xf256;";
    }, 600);
}
hand();
setInterval(hand, 1000);
</script>
<h1>vote here:<i onclick="myFunction(this)" class="fa fa-thumbs-up"></i>

<script>
function myFunction(x) {
    x.classList.toggle("fa-thumbs-down");
}
</script></h1>
      </div>
    </div>
  </div>
   <div class="column">
    <div class="card">
      <img src="resources/data1/images/digisdry.jpg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #AED1D7;width: 100%">
        <h2>Superdry SYG202UB<br>price:9,950</h2>
        <p class="title">Superdry Digital Watch - For Men</p>
        <p>The rectangular dial of this watch has a contemporary appeal courtesy of the modernist theme of its design</p>
        <p>*rupees483/month EMI</p>
         <input type="checkbox" name="giftwrap" value="giftpack">Add gift wrap
        <p><button class="button"style="width: 40%">buy<br><div id="div3" class="fa"style="font-size: 20px"></div></button></p>
        <script>
function hand() {
  var a;
  a = document.getElementById("div3");
  a.innerHTML = "&#xf25a;";
  setTimeout(function () {
      a.innerHTML = "&#xf256;";
    }, 500);
  setTimeout(function () {
      a.innerHTML = "&#xf256;";
    }, 600);
}
hand();
setInterval(hand, 1000);
</script>
<h1>vote here:<i onclick="myFunction(this)" class="fa fa-thumbs-up"></i>

<script>
function myFunction(x) {
    x.classList.toggle("fa-thumbs-down");
}
</script></h1>
      </div>
    </div>
  </div>
   <div class="column">
    <div class="card">
      <img src="resources/data1/images/hamilton.jpg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #A5A29E;width: 100%">
        <h2>casio ca910421001U<br>price:5,950</h2>
        <p class="title">casio Digital Watch - For Men</p>
        <p>it comes with multiple functions like pacer, timer, dual clock,alarm.</p>
        <p>*EMIs from rupees289/month</p>
        <input type="checkbox" name="giftwrap" value="giftpack">Add gift wrap
        <p><button class="button" style="width: 40%">buy<br><div id="div4" class="fa"style="font-size: 20px"></div></button></p>
        <script>
function hand() {
  var a;
  a = document.getElementById("div4");
  a.innerHTML = "&#xf25a;";
  setTimeout(function () {
      a.innerHTML = "&#xf256;";
    }, 500);
  setTimeout(function () {
      a.innerHTML = "&#xf256;";
    }, 600);
}
hand();
setInterval(hand, 1000);
</script>
<h1>vote here:<i onclick="myFunction(this)" class="fa fa-thumbs-up"></i>

<script>
function myFunction(x) {
    x.classList.toggle("fa-thumbs-down");
}
</script></h1>
      </div>
    </div>
  </div>
   <div class="column">
    <div class="card">
      <img src="resources/data1/images/digifast.jpg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #ff5d21;width: 100%">
        <h2>Fastrack 38010PP02J<br>price:2,495</h2>
        <p class="title">Fastrack Digital Watch - For Men</p>
        <p>good watch with multiple functions like timer,dual clock,alarm and WR-upto 200mtrs</p>
        <p>no emi available for this watch</p>
         <input type="checkbox" name="giftwrap" value="giftpack">Add gift wrap
        <p><button class="button"style="width: 40%">buy<br><div id="div5" class="fa"style="font-size: 20px"></div></button></p>
        <script>
function hand() {
  var a;
  a = document.getElementById("div5");
  a.innerHTML = "&#xf25a;";
  setTimeout(function () {
      a.innerHTML = "&#xf256;";
    }, 500);
  setTimeout(function () {
      a.innerHTML = "&#xf256;";
    }, 600);
}
hand();
setInterval(hand, 1000);
</script>
<h1>vote here:<i onclick="myFunction(this)" class="fa fa-thumbs-up"></i>

<script>
function myFunction(x) {
    x.classList.toggle("fa-thumbs-down");
}
</script></h1>
      </div>
    </div>
  </div>
   <div class="column">
    <div class="card">
      <img src="resources/data1/images/skmei.jpg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #1467fc;width: 100%">
        <h2>Skmei sk77010PP04J<br>price:1,524</h2>
        <p class="title">Skmei Digital Watch - For Men</p>
        <p>watch comes with water and shock resistance with chronograph display.</p>
        <p>*Special Price Extra 25%off </p>
         <input type="checkbox" name="giftwrap" value="giftpack">Add gift wrap
        <p><button class="button"style="width: 40%">buy<br><div id="div6" class="fa"style="font-size: 20px"></div></button></p>
        <script>
function hand() {
  var a;
  a = document.getElementById("div6");
  a.innerHTML = "&#xf25a;";
  setTimeout(function () {
      a.innerHTML = "&#xf256;";
    }, 500);
  setTimeout(function () {
      a.innerHTML = "&#xf256;";
    }, 600);
}
hand();
setInterval(hand, 1000);
</script>
<h1>vote here:<i onclick="myFunction(this)" class="fa fa-thumbs-up"></i>

<script>
function myFunction(x) {
    x.classList.toggle("fa-thumbs-down");
}
</script></h1>
      </div>
    </div>
  </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>