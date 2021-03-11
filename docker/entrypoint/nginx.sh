# Install node
cd /tmp && curl -sL https://deb.nodesource.com/setup_14.x | bash -
apt-get install -y nodejs
npm install --global yarn

cd /home/frontend && yarn install
cd /home/frontend && yarn build

rm /etc/nginx/conf.d/default.conf
cp /etc/nginx/templates/default.conf.template /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'
