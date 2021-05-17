#!/bin/bash

# if you want to run live server for watching and auto-reloading, isntall with
# $npm install -g live-server
PORT=9090
live-server --port=$PORT || python3 -m http.server $PORT || python -m SimpleHTTPServer $PORT
echo "open http://localhost:$PORT in your browser"