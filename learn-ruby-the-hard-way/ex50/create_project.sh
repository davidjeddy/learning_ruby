#!/bin/bash
echo "Copying skeleton project now..."
cp -rf ../ex46/skeleton/* .
mv bin/NAME bin/app.rb
mv lib/NAME lib/gothonweb
mv lib/NAME.rb lib/gothonweb.rb
mv NAME.gemspec gothonweb.gemspec
mv tests/test_NAME.rb tests/test_gothonweb.rb
rm tests/NAME_tests.rb
mkdir views
mkdir static
echo "...completed."

echo "Now installing Ruby gems..."
gem install sinatra rerun
echo "...completed."

echo "Starting server in the background..."
rerun 'ruby bin/app.rb' 2>&1 &
echo "...server running."
