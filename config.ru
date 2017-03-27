require 'sinatra'
require 'sinatra/reloader'
require 'grape'
require './app/api/telegram'

use Rack::Session::Cookie
run Rack::Cascade.new [API::Telegram]
