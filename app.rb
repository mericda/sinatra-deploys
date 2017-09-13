require 'sinatra'
require "sinatra/reloader" if development?

enable :sessions

get '/' do


  return 422
end

error 422 do
"You haz an error"
end



get '/title' do
"Programming for Online Prototyping"
end

get '/name' do
redirect to('/title')
end

get '/catalog_description' do
"This is such a nice course."
end

get 'unit' do
"9"
end

get '/instructor' do
"Daragh Byrne"
end

get '/links' do
"<h1>There are three links.</h1>
<ul>
<li>use <b>/slack<b> to get the course slack address.</li>
<li>use <b>/site<b> to get the course web address.</li>
<li>use <b>/repo<b> to get the course GitHub repo address.</li></ul>"
end


get '/links/:item' do

  if params[:item] == "slack"
    "https://onlineprototypes2017.slack.com"
  elsif params[:item] == "site"
    "https://canvas.cmu.edu/courses/2138"
  elsif params[:item] == "repo"
    "https://github.com/daraghbyrne/onlineprototypes2017"
  end
end
