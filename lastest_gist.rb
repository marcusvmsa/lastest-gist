require 'rubygems'
require 'sinatra'
require 'erb'
require 'hpricot'
require 'open-uri'

get '/' do
  
  doc = Hpricot(open("http://gist.github.com/gists"))

  erb :index, :locals => { :first_gist => doc.at(".file") }

end