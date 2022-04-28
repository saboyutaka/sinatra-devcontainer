require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index
end

get "/users" do
  @users = [
    {
      name: "hoge",
      email: "hoge@sample.test",
    },
    {
      name: "fuga",
      email: "fuga@sample.test",
    },
  ]
  erb :users
end
