#!/bin/bash

echo "curl -i -H "Accept: application/json" "http://localhost:3000/users/1/xemojis" > ~/tmp.html"
curl -i -H "Accept: application/json" "http://localhost:3000/users/1/xemojis" > ~/tmp.html
