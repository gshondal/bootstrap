#!/bin/bash
yum update -y
install git -y

# https://docs.npmjs.com/downloading-and-installing-node-js-and-npm
su ec2-user -c '
cd; git clone https://github.com/nvm-sh/nvm; nvm/install.sh; 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 16; nvm use 16

# https://docs.aws.amazon.com/cdk/latest/guide/getting_started.html
npm install -g aws-cdk; cdk --version
'
