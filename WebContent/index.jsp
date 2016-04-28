<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Stock Prediction System</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Stock Prediction System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
 .bg-1{ 
    background-color: #F39C12; 
    color: #ffffff;
  }
  .bg-2{

    background-color: #F5B041; 
    color: #ffffff;
  }

  .bg-3{
        background-color: #F8C471 ; 
    color: #ffffff;             
  }
  
  .inside bg-2{
   width: 300px;
    padding: 25px;
    border: 25px solid navy;
    margin: 25px;
  
  }
 .container-fluid {
    padding-top: 70px;
    padding-bottom: 70px;
}
.start-picture{
 padding-top: 0px;
 padding-bottom:0px;
 background-size:cover;
 background-color:#000000; 
  
}
.navbar {
    padding-top: 10px;
    padding-bottom: 10px;
    border: 0;
    border-radius: 0;
    margin-bottom: 0;
    font-size: 12px;
    letter-spacing: 1px;
}

.navbar-nav li a:hover {
    color: #F39C12 !important;
}

body {
  background: #dbe6dd; 
  background:rgba(255,255,255,0.5);
  text-align: center;
  -webkit-transform: translateZ(0);
}

.btn-big-red {
  background-color: #F39C12;
  background-image: 
    linear-gradient(
      167deg, 
      rgba(white, 0.1) 50%, 
      rgba(black, 0) 55%),
    linear-gradient(
      top, 
      rgba(white, 0.15), 
      rgba(black, 0));
  border-radius: 6px;
  box-shadow:
    0 0 0 1px #C63702 inset,
    0 0 0 2px rgba(white, 0.15) inset,
    0 8px 0 0 #AD3002,
    0 8px 0 1px rgba(black, 0.4),
    0 8px 8px 1px rgba(black, 0.5);
  color: #FFF;
  display: inline-block;
  font-family: "Lucida Grande", Arial, sans-serif;
  font-size: 22px;
  font-weight: bold;
  height: 61px;
  letter-spacing: -1px;
  line-height: 61px;
  margin: 30px 0 10px;
  position: relative;
  text-align: center;
  text-shadow: 0 1px 1px rgba(black, 0.5);
  text-decoration: none !important;
  top: 0;
  width: 186px;
  @include transition(0.15s);
  &:hover, &:focus {
    background-color: #D13902;
    box-shadow: 
      0 0 0 1px #C63702 inset,
      0 0 0 2px rgba(white, 0.15) inset,
      0 10px 0 0 #AD3002,
      0 10px 0 1px rgba(black, 0.4),
      0 10px 8px 1px rgba(black, 0.6);
      top: -2px;
  }
  &:active {
    box-shadow: 
      0 0 0 1px #AD3002 inset,
      0 0 0 2px rgba(white, 0.15) inset,
      0 0 0 1px rgba(black, 0.4);
    @include transform(translateY(10px));      
  }
}
img {
    opacity: 0.4;
    filter: alpha(opacity=40); 
    left: 50%;
    animation: slide 4s 1;
    margin: 2em -244px;
  }

  @keyframes slide {
    from { left: -150%; }
    to { left: 50%; }
}
img:hover {
    opacity: 1.0;
    filter: alpha(opacity=100); /* For IE8 and earlier */
}
div.background {
    background: url(klematis.jpg) repeat;
    border: 2px solid black;
}

div.transbox {
    margin: 30px;
    background-color: #000000;
    border: 1px solid black;
    opacity: 0.6;
    filter: alpha(opacity=60); /* For IE8 and earlier */
}

div.transbox p {
    margin: 5%;
    font-weight: bold;
    color: #ffffff;
}
div.slide-up {
  height:350px;
  overflow:hidden;
  float: left;
}
div.slide-up p {
  color: #F39C12;
  animation: 10s slide-up;
  margin-top:0%;
  font-size: 360%;
}

@keyframes slide-up {
  from {
    margin-top: 100%;
    height: 300%; 
  }

  to {
    margin-top: 0%;
    height: 100%;
  }
}

.sp-circle-link {
  
  left: 50%;
  bottom: 100px;
  margin-left: -50px;
  text-align: center;
  line-height: 100px;
  width: 100px;
  height: 100px;
  background: #fff;
  color: #3f1616;
  font-size: 25px;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  -webkit-animation: fadeInRotate 1s linear 16s backwards;
  -moz-animation: fadeInRotate 1s linear 16s backwards;
  -ms-animation: fadeInRotate 1s linear 16s backwards;
  animation: fadeInRotate 1s linear 16s backwards;
  -webkit-transform: scale(1) rotate(0deg);
  -moz-transform: scale(1) rotate(0deg);
  -o-transform: scale(1) rotate(0deg);
  -ms-transform: scale(1) rotate(0deg);
  transform: scale(1) rotate(0deg);
}
.sp-circle-link:hover {
  background: #85373b;
  color: #fff;
}

.btn {
  -webkit-border-radius: 25;
  -moz-border-radius: 25;
  border-radius: 25px;
  text-shadow: 1px 1px 3px #666666;
  -webkit-box-shadow: 6px 4px 7px #F5E7C7 ;
  -moz-box-shadow: 6px 4px 7px #F5E7C7 ;
  box-shadow: 6px 4px 7px #F5E7C7 ;
  font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  background: #F39C12;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
}
.btn:hover {
  background: #a6aaad;
  text-decoration: none;
}

.btnone{
background:#000000;
}

.btnone {
  -webkit-border-radius: 18;
  -moz-border-radius: 18;
  border-radius: 18px;
  font-family: Arial;
  color: #b5aab5;
  font-size: 12px;
  background: #1f2326;
  padding: 4px 8px 4px 8px;
  text-decoration: none;
}

.btnone:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
}





</style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-nav">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#" font="20px">Rutgers Stock Prediction</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
       <!--  <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Trending Today<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul>
        </li> -->
        <li><a href="rssfeed.jsp">Trending Today</a></li>
        <li><a href="rssfeed.jsp">Contact Us</a></li>
       <!--  <li><a href="#">History</a></li> -->
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <!-- <li><a href="Signup.jsp" id="sign"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> -->
        <form action="OAuth2Servlet" method="get">
        <li><br><input type="submit" value="Login" class="btnone" font="10px" ></li>
        </form>
      </ul>
    </div>
  </div>
</nav>
  
<div class="start-picture">
  <!-- <h1>Stock Prediction</h1> -->
  <!--   <img src="http://www.dividend.com/media/W1siZiIsIjIwMTUvMDEvMDgvNTZuaTMzMDN0b19waG90b2R1bmVfMzIzOTk3X2JlYXJfYW5kX2J1bGxfZmlndXJpbmVfeHMuanBnIl0sWyJwIiwiZW5jb2RlIiwianBnIiwiLXF1YWxpdHkgODAiXSxbInAiLCJ0aHVtYiIsIjIzMngxNzQjIl1d/photodune-323997-bear-and-bull-figurine-xs.jpg" class="img-circle" alt="stock" style="width:250px;height:250px;">
  <p>
 -->  
 <div class="slide-up">
 <p> Discover... </p>
 <p> The nuances</p>
 <p> Of Smart Investment</p>
  <!-- <a class="sp-circle-link" href="#">Join us!</a> -->
 </div>
 <div class="image">
 <img src="https://upload.wikimedia.org/wikipedia/commons/d/d7/Philippine-stock-market-board.jpg">
</div>
</div>
<div class="container-fluid bg-2 text-left">
  <h2>HOW DO WE PREDICT THE FUTURE OF THE STOCK MARKET?</h2>
<p>
  The results may seem like magic, but there is sophisticated math behind them. First, we harness the collective intelligence of online investors. Unlike other companies, we don't stop there. The data we collect is just the raw material for our complex analyses. Our founder, Dr. Craig Kaplan, the former CEO of IQ company and professor of computer science, created algorithms that are able to mine our huge collection of data to determine which of our collective predictions are most likely to be accurate and should be given the most weight.</p>
<p>These two layers — collecting massive quantities of useful data and ranking and analyzing them in subtle ways — combine to produce a model with the power to make market-beating predictions. We then add a third layer of information by identifying which individuals in our user base have been the most accurate in their stock predictions. With PredictWallStreet, you don't have to choose between the collective wisdom of the crowds or the expertise of the exceptional investors. We present you with actionable information from both, filtered through our algorithms that collect the data that has the strongest predictive power.</p>
</div>
<div class="container-fluid bg-3 text-center">
  <h3>Join Us!</h3>
   <!--  <a href="#" class="btn-big-red">Login</a> -->
   <form action="OAuth2Servlet" method="get" >
  <input type="submit" value="Login" class="btn" >
</form>
   <!-- <br>
    <form action="OAuth2Servlet" method="get" >
  <input type="submit" value="Predict" class="btn" >
</form> -->
    <!-- <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal"></span>
      <h4>SELL</h4>
      <p>Lorem ipsum dolor sit amet..</p>                 
    </div> -->
    </div>
    
</div>


</body>
</html>