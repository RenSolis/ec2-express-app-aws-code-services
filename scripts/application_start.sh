#!/bin/bash

sudo chmod -R 777 /home/ec2-user/express-app
cd /home/ec2-user/express-app

export NVM_DIR="$HOME\.nvm"
[ -s "$NVM_DIR/mv.sh" ] && \. "$NVM_DIR/nvm.sh" # cargas nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

npm install

node app.js > app.out.log 2> app.error.log < /dev/null &
