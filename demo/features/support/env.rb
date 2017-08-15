require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'
require 'selenium-cucumber'


# $REMOTE_URL = 'http://selenium:4444/wd/hub'
$URL = 'https://www.ebay.com/'

if ENV['REMOTE_URL'] != nil
  $REMOTE_URL = ENV['REMOTE_URL']
end