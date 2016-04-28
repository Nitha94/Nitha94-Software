<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Real Chart</title>
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
 </style>
<%   
    double[] expind=(double[]) request.getAttribute("indicator");
    String[] date_label=(String[]) request.getAttribute("label");
    int len=expind.length; 
    int lenlabel=date_label.length;
 %>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
  
    google.charts.load('current', {packages: ['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      // Define the chart to be drawn.
      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Element');
      data.addColumn('number', 'Price'); 		
  		
        data.addRows([
	<%
	for (int i=0;i<expind.length;i++){
    //Retrieve by column name    
    String time2=date_label[i];
    double price = expind[i];
    %>    
		 ['<%=time2%>',<%=price%> ],
		 <%}%>
        
      ]); 
        var options = {
        		width: 700,
                height: 500,   	        
        	      
                title: 'Stock Price',
                titleTextStyle: {
                    color: 'FF0000',
                    fontName: 'Arial',
                    fontSize: 15
                  },
                curveType: 'function',
                legend: { position: 'bottom' }
        
              };
    	  
		
      // Instantiate and draw the chart.
      var chart = new google.visualization.LineChart(document.getElementById('myPieChart'));
      chart.draw(data, options);
    }
  </script>
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
        <!-- <form action="OAuth2Servlet" method="get">
        <li><br><input type="submit" value="Login" class="btnone" font="10px" ></li>
        </form> -->
      </ul>
    </div>
  </div>
</nav>
<div id="myPieChart"/>
</body>
</html>