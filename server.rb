# frozen_string_literal: true

puts 'Performing some hard booting work 👷💪'

# Simulate some long bootup time
sleep 5

require 'sinatra'

puts 'Booting complete 🚀'

get '/' do
  erb :index
end

get '/check-redis' do
  begin
    redis = Redis.new(host: 'redis')
    redis.set('test', 'Success!')
    redis.get('test')
  rescue StandardError
    'No connection to redis!'
  end
end

get '/shutdown' do
  # taken from https://stackoverflow.com/questions/19523889/sinatra-terminate-server-from-request

  body "I'll be back..."
  # maybe clean things up here...
  logger.info 'Received terminate request!'
  Thread.new do
    sleep 1
    Process.kill 'INT', Process.pid
  end
  halt 200
end

get '/check-redis-persistance' do
  begin
    redis = Redis.new(host: 'redis')
    redis.set('test', 'Passed!')
    redis.shutdown
    sleep 10
    redis.get('test', 'Failed!')
  rescue StandardError
    'Failed! No connection to redis!'
  end
end
