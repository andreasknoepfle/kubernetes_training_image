# frozen_string_literal: true

puts 'Performing some hard booting work 👷💪'

# Simulate some long bootup time
sleep 5

require 'sinatra'

puts 'Booting complete 🚀'

get '/' do
  erb :index
end
