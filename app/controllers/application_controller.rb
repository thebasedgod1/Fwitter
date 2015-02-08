require './config/environment'
require './app/models/tweet'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do 
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    #tweet1 = Tweet.new("Jon", "Welcome to My Crib")
    #tweet2 =Tweet.new("Don" , "Welcome to My dog")
    #tweet3 = Tweet.new("Con" , "Welcome to My House")
    #tweet4 = Tweet.new("Von" , "Welcome to My Car")
    @tweets = Tweet.all_messages
    erb :tweets
  end

  post '/tweets' do

    new_tweet = Tweet.new(params[:user],params[:message])

    redirect('/')

  end

  # get '/tweets' do 

  #end

end