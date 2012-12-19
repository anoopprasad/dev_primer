require 'rubygems'
require 'bundler'
Bundler.require

require './subscribe.rb'
run Sinatra::Application
