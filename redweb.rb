require 'sinatra'
require 'redis'

# ex:
# http://localhost:4567/set?key=this&value=that  ==> OK
# http://localhost:4567/get?key=this             ==> that

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