gem install rails

mkdir /home/backend/tmp/sockets
chmod 755 /home/backend/tmp/sockets
cd /home/backend && bundle install
rails db:create
rails db:migrate RAILS_ENV=development
bundle exec puma -e development
