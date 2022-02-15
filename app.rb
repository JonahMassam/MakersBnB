require "sinatra"
require 'sinatra/reloader' if development?
require "pg"


class MakersBnB < Sinatra::Base

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
    new_space_name = params[:new_space_name]
    connection = PG.connect(dbname: 'makersbnb_test')
    connection.exec("INSERT INTO spaces (name, users_ref) values ('#{new_space_name}', 0);")
    redirect "/"
  end

  run! if app_file == $0
end
