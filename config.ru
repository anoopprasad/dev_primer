require 'rubygems'
require 'bundler'
Bundler.require
require 'active_record'

require './subscribe.rb'
run Sinatra::Application
