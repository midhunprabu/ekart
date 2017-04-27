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
      <img src="resources/data1/images/rolex sky.jpg" alt="Jane" style="width:100%;height:400px">
      <div class="container" style="background-color: 	#D4AF37;width: 100%">
        <h2>Rolex sky-dweller-m326933<br>price:25,42,471</h2>
        <p class="title">Rolex Analog Watch - For Men</p>
        <p>The Sky-Dweller displays two time zones simultaneously,with the reference time indicated via a rotating disc on the dial</p>
        <p>*Special Price Extra 5%off</p>
        <input type="checkbox" name="giftwrap" value="giftpack">Add gift wrap
        <p><button class="button"style="width: 40%">Buy<br><div id="div1" class="fa"style="font-size: 20px"></div></button></p>
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
      <img src="resources/data1/images/raymond.jpeg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #3A4169;width: 100%">
        <h2>Raymond Weil 2760-ST3<br>price:1,15,515</h2>
        <p class="title">Raymond Analog Watch-For Men</p>
        <p>a product from the house of Raymond Weil Freelancer Realteam.</p>
        <p>*Special Price Extra 7%off</p>
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
      <img src="resources/data1/images/fossil.jpeg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #202020;width: 100%">
        <h2>Fossil ME3062<br>price:18,295</h2>
        <p class="title">fossil Analog Watch - For Men</p>
        <p>A masculine and rugged time piece, it has a black on black design along with a striking dial.</p>
        <p>*EMIs from rupees888/month</p>
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
      <img src="resources/data1/images/casio.jpeg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #EDC9AF;width: 100%">
        <h2>Casio EX184<br>price:8,495</h2>
        <p class="title">Casio Edifice Analog Watch - For Men</p>
        <p>it has a brown on brown design along with a striking dial and chronograph watch from casio.</p>
        <p>*EMIs from rupees412/month</p>
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
      <img src="resources/data1/images/titan.jpeg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #b87333 ;width: 100%">
        <h2>Titan 1665KL02<br>price:14,995</h2>
        <p class="title">Titan Celestial Analog Watch - For Men</p>
        <p>This truly fascinating personal timepiece from Titan's highly futuristic and self-energizing range of HTSE watches for men</p>
        <p>*EMIs from rupees631/month</p>
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
      <img src="resources/data1/images/timexanalog.jpeg" alt="Mike" style="width:100%;height:400px">
      <div class="container" style="background-color: #FF4500;width: 100%">
        <h2>Timex T2N812<br>price:11,736</h2>
        <p class="title">Timex Analog Watch - For Men</p>
        <p>
A splash of orange outlined in black, this Timex wristwatch perfectly fits the definition of a fashion-forward timepiece..</p>
        <p>*Special Price Extra 11%off </p>
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