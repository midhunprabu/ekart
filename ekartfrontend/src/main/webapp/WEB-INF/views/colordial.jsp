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
      <img src="resources/data1/images/w.fastrack.jpeg" alt="Jane" style="width:100%;height:400px">
      <div class="container" style="background-color: #0000ff;width: 100%">
        <h2>Fastrack 6125SM01<br>price:1,795</h2>
        <p class="title">Fastrack Analog Watch - For Women</p>
        <p>Fastrack(a sub-brand of Titan) is fashion accessory brand retailing its products in India</p>
        <p>Bank OfferExtra 5% off* on Axis Bank Buzz Credit Cards</p>
        <input type="checkbox" name="giftwrap" value="giftpack">Add gift wrap
        <p><button class="button"style="width: 40%">Buy<br><div id="div6" class="fa"style="font-size: 20px"></button></p>
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

  <div class="column">
    <div class="card">
      <img src="resources/data1/images/wmaxima.jpeg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #8E236B;width: 100%">
        <h2>Maxima 22164CMLI<br>price:1,045</h2>
        <p class="title">Maxima Swarovski Analog Watch - For Women</p>
        <p>Maxima Watches is world's largest top 10 brands of best indian wrist watches manufacturer brand</p>
        <p>*Special Price Extra 2%off</p>
        <input type="checkbox" name="giftwrap" value="giftpack">Add gift wrap
        <p><button class="button"style="width: 40%">Buy<br><div id="div5" class="fa"style="font-size: 20px"></button></p>
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
      <img src="resources/data1/images/wgiordano.jpeg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #FF4500;width: 100%">
        <h2>Giordano 2752-33<br>price:5,915</h2>
        <p class="title">Giordano Analog Watch - For Women</p>
        <p>Giordano Timewear reflects today modern urban lifestyle with watches suited to almost all occasions of one's day.</p>
        <p>*EMIs from rupees287/month</p>
         <input type="checkbox" name="giftwrap" value="giftpack">Add gift wrap
        <p><button class="button"style="width: 40%">buy<br><div id="div4" class="fa"style="font-size: 20px"></button></p>
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
      <img src="resources/data1/images/wgreengior.jpeg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #2E8B57;width: 100%">
        <h2>Giordano A2040-11<br>price:3,499</h2>
        <p class="title">Casio Edifice Analog Watch - For Women</p>
        <p>Giordano International Limited (Giordano or the Company)is a Hong Kong-based international retailer </p>
        <p>*Bank OfferExtra 5% off* on Axis Bank Buzz Credit Cards</p>
        <input type="checkbox" name="giftwrap" value="giftpack">Add gift wrap
        <p><button class="button" style="width: 40%">buy<br><div id="div3" class="fa"style="font-size: 20px"></button></p>
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
      <img src="resources/data1/images/wguess.jpeg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #C0C0C0;width: 100%">
        <h2>Guess W0236L1<br>price:11,625</h2>
        <p class="title">Guess Analog Watch - For Women</p>
        <p>Established as a famous clothing brand, Guess have now become a leading provider of fashionable and trendy watches.</p>
        <p>*EMIs from rupees564/month</p>
         <input type="checkbox" name="giftwrap" value="giftpack">Add gift wrap
        <p><button class="button"style="width: 40%">buy<br><div id="div1" class="fa"style="font-size: 20px"></button></p>
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
      <img src="resources/data1/images/wloisred.jpeg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #ce0202;width: 100%">
        <h2>Lois Caron LCS - 4611<br>price:360</h2>
        <p class="title">Lois Caron Analog Watch - For Women</p>
        <p>This is a truly fascinating personal timepiece from Lois Caron comes with Water Resistant</p>
        <p>*Special Price Extra 5%off </p>
         <input type="checkbox" name="giftwrap" value="giftpack">Add gift wrap
        <p><button class="button"style="width: 40%">buy<br><div id="div2" class="fa"style="font-size: 20px"></button></p>
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
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>