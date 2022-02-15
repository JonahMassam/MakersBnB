require "sinatra"
require "capybara"
require "capybara/rspec"
require "rspec"
require 'sinatra/reloader' if development?
require "pg"


class MakersBnB < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'test page'
  end

  get "/create_new_space" do
    erb :create_new_space
  end

  post "/submit_new_space" do
    puts "hi"
  end

  run! if app_file == $0
end
