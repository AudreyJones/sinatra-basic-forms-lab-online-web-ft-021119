require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
    #you'll need to set up another controller action for a user to be able to view this form in the browser.
  end

  post '/puppy' do
    binding.pry
    puppy = Puppy.new(params)
    @name = puppy.name
    @breed = puppy.breed
    puppy.age = params["age"]
    # binding.pry
    erb :display_puppy
  end
end
