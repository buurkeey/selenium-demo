#!/bin/bash
mkdir -p /myapp/cucumber_output
bundle install
#parallel_cucumber features/test/*.feature --group-by scenarios --format pretty --format html --out cucumber_output/report<%= ENV['TEST_ENV_NUMBER']%>.html -n 5
parallel_cucumber features/test/demo.feature REMOTE_URL=http://selenium:4444/wd/hub --group-by scenarios -n 1