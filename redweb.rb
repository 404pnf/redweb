require 'sinatra'
require 'redis'

# include :key, :value
get '/set' do
  redis = Redis.new
  redis.set(params[:key], params[:value])
end

# include :key
get '/get' do
  redis = Redis.new
  redis.get(params[:key])
end