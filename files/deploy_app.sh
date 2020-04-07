#!/bin/bash
# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title>
  <style>
  HTML SCSS JSResult
EDIT ON
@import url(https://fonts.googleapis.com/css?family=Fjalla+One);

$background: linear-gradient(to bottom, #405166 0%,#656f6f 100%);
$red: #e55643 ;
$green: #2b9f5e;
$yellow: #f1c83c;
$shadow: #533d4a;

html{
  height: 100%;
}

body{
  font-family: 'Fjalla One', sans-serif;
  background: $background;
}

.container{
  transform: translate(-50%, -50%);
  top: 50%;
  left: 50%;
  display: block;
  position: absolute;
  max-width: 225px;
}

.button{
  float: left;
  position: relative;
  bottom: -65px;
  left: 50%;
  transform: translateX(-50%) rotate(-10deg);
  color: $red;
  text-transform: uppercase;
  opacity: 0;
  visibility: hidden;
  cursor: pointer;
  
  span{
    transform: skew(-10deg);
    display: block;
    float: left;
    text-shadow: $shadow 1px 1px, $shadow 2px 2px, $shadow 3px 3px, $shadow 4px 4px;
  }
}

h1{
  color: #fff;
  text-transform: uppercase;
  font-size: 42px;
  margin: 0;
  line-height: 47px;
  letter-spacing: 2px;
}

.title{
  transform: translateX(-50%) rotate(-10deg);
  display: block;
  float: left;
  left: 50%;
  position: relative;
  
  span {
    transform: skew(-10deg);
    display: block;
    float: left;
    text-shadow: $shadow 1px 1px, $shadow 2px 2px, $shadow 3px 3px, $shadow 4px 4px, $shadow 5px 5px, $shadow 6px 6px;
    min-width: 10px;
    min-height: 10px;
    position: relative;
  }
}

.title{
  &:nth-child(1){
    color: $red;
  }
  &:nth-child(2){
    color: $green;
  }
  &:nth-child(3){
    color: $yellow;
  }
}
</style>
  
  
  <script>
  $(document).ready(function() {
  $(".title").lettering();
  $(".button").lettering();
});

$(document).ready(function() {
  animation();
}, 1000);

$('.button').click(function() {
  animation();
});


function animation() {
  var title1 = new TimelineMax();
  title1.to(".button", 0, {visibility: 'hidden', opacity: 0})
  title1.staggerFromTo(".title span", 0.5, 
  {ease: Back.easeOut.config(1.7), opacity: 0, bottom: -80},
  {ease: Back.easeOut.config(1.7), opacity: 1, bottom: 0}, 0.05);
  title1.to(".button", 0.2, {visibility: 'visible' ,opacity: 1})
}
</script>
  </head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Meow World!</h2></center>
<section class="container">
  <h1>
    <span class="title">Welcome to</span>
    <span class="title">HashiCat</span>
    <span class="title">Kittens as a Service</span>
  </h1>
  
  <div class="button">restart</div>
</section>
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
