require 'sinatra'
require 'redis'

before do
  content_type 'text/plain'
end

# include :key, :value
post '/set' do
  redis = Redis.new
  redis.set(params[:key], params[:value])
end

# include :key
get '/get' do
  redis = Redis.new
  redis.get(params[:key])
end