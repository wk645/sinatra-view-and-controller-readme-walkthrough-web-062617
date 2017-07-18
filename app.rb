require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
  	# puts params
  	original_string = params["string"]
  	@reversed_string = original_string.reverse
  	# change to an instance variable to make it visible
  	# not between controller methods
    erb :reversed
  end

  get '/friends' do
      @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
 
  erb :friends

  end
end