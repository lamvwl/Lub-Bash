#!/usr/bin/env bash

echo "Please have APPLICATION PATH and APPLICATION NAME (for secret_token.rb) ready."
echo "(HINT: For APPLICATION NAME try '../config/routes.rb' or similar files)"
echo ""

echo "Path for Ruby Application:(~/ PATHNAME /)"
read new_ruby_path
echo ""

echo "Application Name for secret token file (case sensitive)"
read app_name
echo ""

cd ~/$new_ruby_path

echo "TESTING 'bundle exec rake secret'..." 
bundle exec rake secret
echo ""
echo "You should see a long secret key above, otherwise quit now with CTRL+C"
echo "Press any key and ENTER to continue."
read dummy_input
echo ""

new_secret_key1=`bundle exec rake secret`
new_secret_key2=`bundle exec rake secret`
echo "Secret Key 1:"
echo $new_secret_key1
echo ""
echo "Secret Key 2:"
echo $new_secret_key2
echo ""

echo $app_name"::Application.config.secret_key_base = '"$new_secret_key1"'" > ~/$new_ruby_path"/config/initializers/secret_token.rb"

echo "CONTENTS OF '../config/initializers/secret_token.rb' :"
cat ~/$new_ruby_path"/config/initializers/secret_token.rb"

echo ""

echo "development:" > ~/$new_ruby_path"/config/secrets.yml"
echo "  secret_key_base: "$new_secret_key1 >> ~/$new_ruby_path"/config/secrets.yml"
echo "test:" >> ~/$new_ruby_path"/config/secrets.yml"
echo "  secret_key_base: "$new_secret_key2 >> ~/$new_ruby_path"/config/secrets.yml"
echo "# Do not keep production secrets in the repository," >> ~/$new_ruby_path"/config/secrets.yml"
echo "# instead read values from the environment." >> ~/$new_ruby_path"/config/secrets.yml"
echo "production:" >> ~/$new_ruby_path"/config/secrets.yml"
echo "  secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>" >> ~/$new_ruby_path"/config/secrets.yml"

echo "CONTENTS OF '../config/secrets.yml' :"
cat ~/$new_ruby_path"/config/secrets.yml"

echo ""

echo "~/"$new_ruby_path"/config/initializers/secret_token.rb"
echo "CREATED..."
echo ""
echo "~/"$new_ruby_path"/config/secrets.yml"
echo "CREATED..."
echo ""

echo "This program will now test the Ruby app using 'rails server'"
echo "Press any key and ENTER to continue or Ctrl+C to Quit."
read dummy_input
cd ~/$new_ruby_path
rails s
echo ""

