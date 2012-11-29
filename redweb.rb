require 'sinatra'
require 'redis'

# include :name, :value
get '/set' do
  redis = Redis.new
  redis.set(params[:key], params[:value])
end

# include :name
get '/get' do
  redis = Redis.new
  redis.get(params[:key])
end