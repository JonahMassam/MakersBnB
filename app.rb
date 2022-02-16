require "sinatra"
require "pg"

class MakersBnB < Sinatra::Base

  get '/' do
    erb :index
  end

  get "/register" do
    erb :register
  end

  post "/register_new_user" do
    user_name = params[:user_name]
    connection = PG.connect(dbname: 'makersbnb_test')
    connection.exec("INSERT INTO users (name) VALUES ('#{user_name}');")
    redirect "/user_home_page"
  end

  get "/login" do
    erb :login
  end


  get "/user_home_page" do
    "Hello User"
  end

  get "/create_new_space" do
    erb :create_new_space
  end

  post "/submit_new_space" do
    new_space_name = params[:new_space_name]
    connection = PG.connect(dbname: 'makersbnb_test')
    connection.exec("INSERT INTO spaces (name, users_ref) VALUES ('#{new_space_name}', 0);")
    redirect "/"
  end

  run! if app_file == $0
end
