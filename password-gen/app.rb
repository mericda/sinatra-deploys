require 'sinatra'
require "sinatra/reloader" if development?

enable :sessions

get '/' do


  return 422
end

error 422 do
"You haz an error"
end

get '/generate-password' do
  "Hello world"
  @number_array = ("0".."9").to_a.sample(3)
  @lowercase_array = ("a".."z").to_a.sample(3)
  @uppercase_array = ("A".."Z").to_a.sample(2)
  @symbol_array = ("!".."*").to_a.sample(1)
password = (@number_array + @lowercase_array + @uppercase_array + @symbol_array).shuffle.join("")
  "#{password}"

end



get '/generate-password/:item' do

  if params[:item] == "slack"
    "https://onlineprototypes2017.slack.com"
  elsif params[:item] == "site"
    "https://canvas.cmu.edu/courses/2138"
  elsif params[:item] == "repo"
    "https://github.com/daraghbyrne/onlineprototypes2017"
  end
end
