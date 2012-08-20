Demonstrates chefspec, a gem that enables you to write rspec tests for your chef recipes without having to actually run them on a node.

You can learn about chefspec at https://www.relishapp.com/acrmp/chefspec/docs
You can learn about RSpec at https://www.relishapp.com/rspec
And of course chef is at http://wiki.opscode.com/display/chef/Home

To install: clone this repo, install Bundler (gem install bundler), and install the chefspec gems via bundler (bundle install).

To run the tests: "bundle exec rspec cookbooks/mytestcookbook/"
