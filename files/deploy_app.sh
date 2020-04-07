#!/bin/bash
# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">
  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>WHEN GOOD CATS GO BAD</h2></center>
  <center><img src="https://media.giphy.com/media/xUPGGL6QJSmDmqKs5G/giphy.gif"></img></center>
  <!-- END -->
  </div>
  </body>
</html>
EOM

echo "Script complete."