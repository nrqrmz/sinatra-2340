require_relative 'config/application'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

get '/' do
  @restaurants = Restaurant.all

  erb :index
end

get '/restaurants/:restaurant_id' do
  restaurant_id = params['restaurant_id']
  @restaurant = Restaurant.find(restaurant_id)

  erb :show
end
