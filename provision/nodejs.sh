#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

source /root/.nvm/nvm.sh
nvm install 5

mv /root/.nvm /home/vagrant/.nvm

echo 'export NVM_DIR="/home/vagrant/.nvm"' >> /home/vagrant/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> /home/vagrant/.zshrc
