<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
.divclass{
position:absolute;
right:0px;
top:65px;
}
.divclassone{
position:absolute;
right:0px;
top:293px;
}


body{
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
      <a class="navbar-brand" href="#">Rutgers Stock Prediction</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Home</a></li>
       <!--  <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Trending Today<span class="caret"></span></a>
           <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul> 
        </li> -->
        <li><a href="#">Trending Today</a></li>
         <li><a href="contact.jsp">Contact Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
<!--         <li><a href="Signup.jsp" id="sign"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
<!-- <!--  -->        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> RSS Feed</a></li>
 --> -->      </ul>
    </div>
  </div>
</nav>
<div>
<!-- start feedwind code --><script type="text/javascript">document.write('\x3Cscript type="text/javascript" src="' + ('https:' == document.location.protocol ? 'https://' : 'http://') + 'feed.mikle.com/js/rssmikle.js">\x3C/script>');</script><script type="text/javascript">(function() {var params = {rssmikle_url: "http://www.forbes.com/markets/index.xml",rssmikle_frame_width: "350",rssmikle_frame_height: "400",frame_height_by_article: "0",rssmikle_target: "_blank",rssmikle_font: "Arial, Helvetica, sans-serif",rssmikle_font_size: "12",rssmikle_border: "off",responsive: "off",rssmikle_css_url: "",text_align: "left",text_align2: "left",corner: "off",scrollbar: "on",autoscroll: "on",scrolldirection: "up",scrollstep: "3",mcspeed: "20",sort: "Off",rssmikle_title: "on",rssmikle_title_sentence: "",rssmikle_title_link: "",rssmikle_title_bgcolor: "#FFD700",rssmikle_title_color: "#FFFFFF",rssmikle_title_bgimage: "",rssmikle_item_bgcolor: "#FFFFFF",rssmikle_item_bgimage: "",rssmikle_item_title_length: "55",rssmikle_item_title_color: "#FFC34D",rssmikle_item_border_bottom: "on",rssmikle_item_description: "on",item_link: "off",rssmikle_item_description_length: "150",rssmikle_item_description_color: "#666666",rssmikle_item_date: "gl1",rssmikle_timezone: "Etc/GMT",datetime_format: "%b %e, %Y %l:%M %p",item_description_style: "text+tn",item_thumbnail: "full",item_thumbnail_selection: "auto",article_num: "15",rssmikle_item_podcast: "off",keyword_inc: "",keyword_exc: ""};feedwind_show_widget_iframe(params);})();</script><div style="font-size:10px; text-align:center; width:350px;"><a href="http://feed.mikle.com/" target="_blank" style="color:#CCCCCC;">RSS Feed Widget</a><!--Please display the above link in your web page according to Terms of Service.--></div><!-- end feedwind code --><!--  end  feedwind code -->
<!-- start feedwind code --><script type="text/javascript">document.write('\x3Cscript type="text/javascript" src="' + ('https:' == document.location.protocol ? 'https://' : 'http://') + 'feed.mikle.com/js/rssmikle.js">\x3C/script>');</script><script type="text/javascript">(function() {var params = {rssmikle_url: "http://www.nasdaq.com/aspxcontent/NasdaqRSS.aspx?data=quotes&symbol=YHOO&symbol=AAPL&symbol=AMZN&symbol=BBY&symbol=EBAY&symbol=GOOG&symbol=FB&symbol=GS&symbol=RHT&symbol=BAC",rssmikle_frame_width: "350",rssmikle_frame_height: "400",frame_height_by_article: "3",rssmikle_target: "_blank",rssmikle_font: "Arial, Helvetica, sans-serif",rssmikle_font_size: "12",rssmikle_border: "off",responsive: "off",rssmikle_css_url: "",text_align: "left",text_align2: "left",corner: "off",scrollbar: "on",autoscroll: "on_mc",scrolldirection: "up",scrollstep: "3",mcspeed: "20",sort: "Off",rssmikle_title: "on",rssmikle_title_sentence: "",rssmikle_title_link: "",rssmikle_title_bgcolor: "#FFD700",rssmikle_title_color: "#FFFFFF",rssmikle_title_bgimage: "",rssmikle_item_bgcolor: "#FFFFFF",rssmikle_item_bgimage: "",rssmikle_item_title_length: "55",rssmikle_item_title_color: "#FFBA30",rssmikle_item_border_bottom: "on",rssmikle_item_description: "on",item_link: "on",rssmikle_item_description_length: "150",rssmikle_item_description_color: "#666666",rssmikle_item_date: "gl1",rssmikle_timezone: "Etc/GMT",datetime_format: "%b %e, %Y %l:%M %p",item_description_style: "text",item_thumbnail: "full",item_thumbnail_selection: "auto",article_num: "15",rssmikle_item_podcast: "off",keyword_inc: "",keyword_exc: ""};feedwind_show_widget_iframe(params);})();</script><div style="font-size:10px; text-align:center; width:350px;"><a href="http://feed.mikle.com/" target="_blank" style="color:#CCCCCC;">RSS Feed Widget</a><!--Please display the above link in your web page according to Terms of Service.--></div><!-- end feedwind code --><!--  end  feedwind code -->
</div>
<div class="divclass">
<script type="text/javascript" src="https://www.barchart.com/widget.js?uid=d0570c9ae1b154b3bafd169ca5a50d61&widgetType=leaders&lbType=stock&widgetWidth=350&fontColor%5Blinks%5D=0d1821&font=1&tabs%5B%5D=active&tabs%5B%5D=gainers&tabs%5B%5D=losers&fields%5B%5D=name&fields%5B%5D=symbol&fields%5B%5D=last&fields%5B%5D=change&fields%5B%5D=pctchange&displayChars="></script>
</div>
<div class="divclassone">
<script type="text/javascript" src="https://www.barchart.com/widget.js?uid=d0570c9ae1b154b3bafd169ca5a50d61&widgetType=chart&showChart=true&widgetWidth=350&chartType=AREA&chartColor%5Barea%5D=e89212&fontColor%5Blinks%5D=1a1918&font=1&animated=1&symbols%5B%5D=AAPL&symbols%5B%5D=GOOG&symbols%5B%5D=EBAY&symbols%5B%5D=BBY&symbols%5B%5D=AMZN&fields%5B%5D=symbol&fields%5B%5D=last&fields%5B%5D=change&fields%5B%5D=pctchange"></script>
</div>
</body>
</html>