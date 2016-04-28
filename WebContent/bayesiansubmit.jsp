
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE HTML>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
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

select  {
    outline: 0;
    overflow: hidden;
    height: 30px;
    background: #000000;
    color: #747a80;
    border: #2c343c;
    padding: 5px 3px 5px 10px;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    border-radius: 10px;
}

select option {border: 1px solid #000; background: #000000;}

.ticker{
    color: #000000;
    font-family: courier;
    font-size: 100%;
}

.first{ 
    background-color: #F8C471 ; 
    color: #ffffff;
    border:1px solid black;
    border-radius: 25px;
    padding: 20px 20px; 
    width: 500px;
    height: 450px;   
  }

  #input1{
    border-radius: 25px;
  }
#gtodate{
  border-radius: 25px;
}
body{
  /* background-color: #F5E7C7  ; */
   background:
linear-gradient(27deg, #f4e4be 5px, transparent 5px) 0 5px,
linear-gradient(207deg, #f4e4be 5px, transparent 5px) 10px 0px,
linear-gradient(27deg, #f4e4be 5px, transparent 5px) 0px 10px,
linear-gradient(207deg, #f4e4be 5px, transparent 5px) 10px 5px,
linear-gradient(90deg, #f4e4be 10px, transparent 10px),
linear-gradient(#f4e4be 25%, #f4e4be 25%, #f4e4be 50%, transparent 50%, transparent 75%, #f9f0dc 75%, #f9f0dc);
background-color:#f4e3be;
background-size: 20px 20px;
}
#rolling{
  color: #F39C12;
  font-size: 200%;
}

#first-box{
    float:left;
    width: 30%;
    padding-bottom: 30%; /* = width for a 1:1 aspect ratio */
    margin:1.66%;
    background-color: #F8C471;
 
}
#second-box{
   float:left;
    width: 30%;
    padding-bottom: 30%; /* = width for a 1:1 aspect ratio */
    margin:1.66%;
    background-color: #F8C471;
 
}
#third-box{
   float:left;
    width: 30%;
    padding-bottom: 30%; /* = width for a 1:1 aspect ratio */
    margin:1.66%;
    background-color: #F8C471;
 
}
#fourth-box{
   float:left;
    width: 30%;
    padding-bottom: 30%; /* = width for a 1:1 aspect ratio */
    margin:1.66%;
    background-color: #F8C471;
 
}
.square {
    float:left;
    position: relative;
    width: 30%;
    padding-bottom: 30%; /* = width for a 1:1 aspect ratio */
    margin:1.66%;
    overflow:hidden;
    background-color: #F8C471;
    border-radius: 25px;
    
}

.content {
    position:absolute;
    height:80%; /* = 100% - 2*10% padding */
    width:90%; /* = 100% - 2*5% padding */
    padding: 10% 5%;
    text-align:center
}
.contenttwo{
    position:absolute;
    height:90%; /* = 100% - 2*10% padding */
    width:90%; /* = 100% - 2*5% padding */
    padding: 5% 5%;
    text-align:center
}

.btn-big{
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
  height: 31px;
  letter-spacing: -1px;
  line-height: 21px;
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

#dateperiod{
  border-radius: 10px;
}

.squareone{
    float:left;
    position: relative;
    width: 46.5%;
    padding-bottom: 30%; /* = width for a 1:1 aspect ratio */
    margin:1.66%;
    overflow:hidden;
    background-color: #F8C471;
    border-radius: 25px;
    display: inline-block;

}

.contentquery{
   position:absolute;
    height:98%; /* = 100% - 2*10% padding */
    width:98%; /* = 100% - 2*5% padding */
    padding: 2% 2%;
    text-align:center
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
.font_style{
color: #0a0a0a; font-family: 'Droid serif', serif; font-size: 19px; font-weight: 400; font-style: italic; line-height: 44px; margin: 0 0 12px; text-align: center;
}

.font_stylequery{
color: #0a0a0a; font-family: 'Droid serif', serif; font-size: 15px; font-weight: 400; font-style: italic; line-height:24px; text-align: center;
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
      <a class="navbar-brand" href="#">Stock Prediction</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <!-- <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Trending Today<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul>
        </li> -->
        <li><a href="rssfeed.jsp">Trending Today</a></li>
        <li><a href="#">Contact Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
<!--         <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
 -->       
<!--   <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
 -->      </ul>
    </div>
  </div>
</nav>
<marquee id="rolling"> Predict the Stock Market... </marquee>
<div class="squareone">
  <div class="contenttwo">
<form  method="post"
action="bayesiancontroller" >
<img src="images/predict.png" height="90px" width="90px">
<p class="ticker">Select ticker</p> <select id ="ticker" name="ticker">  
  <option value="YHOO">YHOO</option>
  <option value="AMZN">AMZN</option>
  <option value="GOOG">GOOG</option> 
  <option value="EBAY">EBAY</option>
  <option value="BBY">BBY</option>
  <option value="GS">GS</option>
  <option value="FB">FB</option>
  <option value="AAPL">AAPL</option>
  <option value="RHT">RHT</option>
  <option value="BAC">BAC</option> 
</select><br>
<!-- Select option: <select id ="selection" name="selection">  
  <option value="open">open</option>
  <option value="close">close</option>
  <option value="high">high</option> 
  <option value="low">low</option>
  <option value="volume">volume</option>
</select> <br> -->
<br>
Prediction Duration <br> <input type="date" id="dateperiod" name="dateperiod" value="2016-04-27" >
<br><br>
<input class="btn" id="button" type="submit" value="Predict"/><br>
<output><p class="font_style"><%= request.getAttribute("shorttermprediction") %></p></output> 
</form>
</div>
</div>
<div class="squareone">
  <div class="contenttwo">
<form  method="post"
action="indicatorcontroller" >
<img src="images/view.png" height="100px" width="100px"><br>
 &nbsp;&nbsp;&nbsp;&nbsp;Indicator Type &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ticker<br>&nbsp;<select id="indicator" name="indicator" width="120px">
	<option value="sma">SimpleMovingAverage</option>
  	<option value="ema">ExponentialMovingAverage</option>
  	<option value="obv">On Balance Volume</option>
</select>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select id ="iticker" name="iticker">  
  <option value="YHOO">YHOO</option>
  <option value="AMZN">AMZN</option>
  <option value="GOOG">GOOG</option> 
  <option value="EBAY">EBAY</option>
  <option value="BBY">BBY</option>
  <option value="GS">GS</option>
  <option value="FB">FB</option>
  <option value="AAPL">AAPL</option>
  <option value="RHT">RHT</option>
  <option value="BAC">BAC</option>
</select><br>
<br>
Prediction Duration <br>
<input type="date" id="fromdate" name="fromdate" value="2016-04-20">
<input type="date" id="todate" name="todate" value="2016-04-27">
<br><br>
<input id="button" class="btn" type="submit" value="View Trend"/>
</form>
</div>
</div>

<!-- <div class="square"> 
  <div class="contenttwo">
<p>Select Ticker to view graph </p><br>

<form  method="post"
action="graphcontroller" > 
<img src="images/graph.png" height="100px" width="100px"><br>
 Ticker <br><select id ="gticker" name="gticker">  
  <option value="YHOO">YHOO</option>
  <option value="AMZN">AMZN</option>
  <option value="GOOG">GOOG</option> 
  <option value="EBAY">EBAY</option>
  <option value="BBY">BBY</option>
  <option value="GS">GS</option>
  <option value="FB">FB</option>
  <option value="AAPL">AAPL</option>
  <option value="RHT">RHT</option>
  <option value="BAC">BAC</option>
</select><br><br>
Prediction Duration <br>
<input type="date" id="gfromdate" name="gfromdate" value="2016-04-20">
<input type="date" id="gtodate" name="gtodate" value="2016-04-27" ><br><br>
<input id="button" class="btn" type="submit" value="View Trend"/>
</form>
</div>
</div>
 -->
<div class="squareone">
  <div class="contentquery">
<form  method="post" action="querycontroller" > 
<img src="images/query.png" height="90px" width="90px"><br>
Ticker <select id ="qticker" name="qticker"> <br>
  <option value="YHOO">YHOO</option>
  <option value="AMZN">AMZN</option>
  <option value="GOOG">GOOG</option> 
  <option value="EBAY">EBAY</option>
  <option value="BBY">BBY</option>
  <option value="GS">GS</option>
  <option value="FB">FB</option>
  <option value="AAPL">AAPL</option>
  <option value="RHT">RHT</option>
  <option value="BAC">BAC</option>
</select>
<br>
<input type="checkbox" id="all" name="all" value="all"> Select all companies  <br>

Price Option <select id ="priceoption" name="priceoption">  
  <option value="Latest">Latest Price</option>
  <option value="Highest">Highest Price</option>
  <option value="Average">Average Price</option> 
  <option value="Lowest">Lowest Price</option> 
  <option value="lessAverage">Less than Avg Price</option>  
</select><br><br>
Date <select id ="daterange" name="daterange">  
  <option value="10 DAY">Last 10 days</option>
  <option value="1 MONTH">Last 1 month </option>
  <option value="1 YEAR">Last 1 year</option>     
</select>
<br><br>
<input  id="button"  type="submit" value="Get" class="btn" /><br>
<output><p class="font_stylequery"><%= request.getAttribute("resp") %></p></output> 
</form>
</div>
</div>
<%-- <tr> Result: <%= request.getAttribute("resp") %></tr> --%> 

<div class="squareone">
  <div class="contentquery">
    <img src="images/newicon.png" height="100px" width="100px"><br>
    <p>Select Ticker to view prices on chart </p>
<form  method="post"
action="graphcontroller" > 
 Ticker: <select id ="gticker" name="gticker">  
  <option value="YHOO">YHOO</option>
  <option value="AMZN">AMZN</option>
  <option value="GOOG">GOOG</option> 
  <option value="EBAY">EBAY</option>
  <option value="BBY">BBY</option>
  <option value="GS">GS</option>
  <option value="FB">FB</option>
  <option value="AAPL">AAPL</option>
  <option value="RHT">RHT</option>
  <option value="BAC">BAC</option>
</select><br>
<br>
<div id='checkbox'>
<input type="checkbox" id="Dategraph" name="Dategraph" value="Dategraph"> For Date Graph
<input type="checkbox" id="Timegraph" name="Timegraph" value="Timegraph"> For Time Graph
</div>

<script>
document.getElementById("Dategraph").addEventListener("click", myFunction);
document.getElementById("Timegraph").addEventListener("click", myFunction1);
function myFunction() {
  document.getElementById("Timegraph").checked = false;
  document.getElementById('Dates').style.display = 'block';
  document.getElementById('Time').style.display = 'none';
  }
function myFunction1() {
  document.getElementById("Dategraph").checked = false;
  document.getElementById('Dates').style.display = 'none';
  document.getElementById('Time').style.display = 'block';
}
</script>
<div id="Dates" style="display:none;">
<input type="date" id="gfromdate" name="gfromdate" value="2016-04-15">
<input type="date" id="gtodate" name="gtodate" value="2016-04-27">
</div>

<div id="Time" style="display:none;">
<select id ="fromtime" name="fromtime">  
  <option value="5">5 Mins</option> 
  <option value="10">10 Mins</option>
  <option value="15">15 Mins</option>
   <option value="20">20 Mins</option>
    <option value="25">25 Mins</option>
     <option value="30">30 Mins</option>
  <option value="n5">Next 5 Mins</option>
  <option value="n10">Next 10 Mins</option>
  <option value="n15">Next 15 Mins</option>
   <option value="n20">Next 20 Mins</option>
    <option value="n25">Next 25 Mins</option>
     <option value="n30">Next 30 Mins</option>
</select>
</div>
<br><br>
<input id="button" type="submit" value="View Chart" class="btn" /><br>
</form>
</div>
    </div>
 <web-app>
<listener>
    <listener-class>
     com.listeners.MyContextListener
    </listener-class>
  </listener>
<servlet/>
<servlet-mapping/>
</web-app>    
    </body>

</html>