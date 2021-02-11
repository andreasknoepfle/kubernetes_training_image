# frozen_string_literal: true

puts 'Performing some hard booting work 👷💪'

# Simulate some long bootup time
sleep 5

require 'sinatra'
require 'singleton'

puts 'Booting complete 🚀'

get '/' do
  erb :index
end

get '/ready' do
  sleep 2
  halt 200
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
  replicas = params[:replicas]
  # taken from https://stackoverflow.com/questions/19523889/sinatra-terminate-server-from-request
  logger.info 'Received terminate request!'
  Thread.new do
    sleep 1
    Process.kill 'INT', Process.pid
  end
  if replicas
    erb :redirect
  else
    body "I'll be back..."
    # maybe clean things up here...
    halt 200
  end
end

get '/check-redis-persistance' do
  begin
    redis = Redis.new(url: 'redis://redis:6379/0')
    redis.set('test', 'Passed test!')
    redis.shutdown
    sleep 10
    body redis.get('test', 'Failed test. Value not persisted!')
  rescue StandardError
    'Failed! No connection to redis!'
  end
end

class StatusCheck
  include Singleton

  def status
    @status ||= 200
  end

  def fail
    @status = 400
  end
end

get '/status' do
  halt StatusCheck.instance.status
end

get '/status-fail' do
  StatusCheck.instance.fail
  redirect '/'
end
