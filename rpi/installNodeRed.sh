#!/bin/bash
#https://git.io/JLxOm#
sudo npm install -g --unsafe-perm node-red
nohup node-red &
curl -kL https://github.com/fukatechnologies/gateway/blob/master/flows/firstrun.json -o updateFlow.json
curl -vX POST http://localhost:1880/flows -d @updateFlow.json --header "Content-Type: application/json"
rm updateFlow.json
