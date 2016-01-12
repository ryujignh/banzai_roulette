# banzai_roulette
Random gif generator using Giphy api

# To start server
bundle install first (new gem "thin" required)
$ thin start --ssl -p 3000 Access to https://localhost:3000

# !!!When starting a server!!!

Ignore the privacy warning from chrome. Continue to the homepage by clicking "advanced" in left bottom corner of the warning message, and click "continue".


#Starting server from ngrok
$ rails s
$ ngrok http -subdomain=banzairoulette 3000
access http://banzairoulette.ngrok.io

# Before start server
##Please install ngrok
https://ngrok.com/
