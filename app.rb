require 'sinatra'
require "sinatra/reloader" if development?
configure do
  set :slack, 'https://onlineprototypes2017.slack.com'
  set :site, 'https://canvas.cmu.edu/courses/2138'
  set :repo, 'https://github.com/daraghbyrne/onlineprototypes2017'
end

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
<li>use <b>/slack</b> to get the course slack address.</li>
<li>use <b>/site</b> to get the course web address.</li>
<li>use <b>/repo</b> to get the course GitHub repo address.</li></ul>"
end


get '/links/:item' do
  if params["item"] == 'slack'
settings.slack
  elsif params["item"] == 'site'
settings.site
  elsif params["item"] == 'repo'
settings.repo
  else
    redirect to ('/links')
  end
end


get '/meeting_times' do
  "<h1>You can meet with Daragh either in class or during his office hours.</h1>
  <ul>
  <li>use <b>/class</b> to get the course schedule.</li>
  <li>use <b>/officehours</b> to get Daragh's office hours.</li></ul>"
end

get '/meeting_times/:item' do
  if params["item"] == 'class'
    "Course meets at 3-5pm on Tuesdays and Thursdays. "
  elsif params["item"] == 'officehours'
    "Daragh is available for any questions between 5:00 to 6:30 on Fridays"
  else
    redirect to ('/meeting_times')
  end
