require 'sinatra'
require 'sinatra/reloader'
require_relative 'train_app.rb'

  get("/") do 
    erb :index
  end

  get("/trains") do 
    erb :train_index
  end

  get("/trains/:index") do 
    train = params[:index].to_s
    @chosen_train = MTA[train]
    # @location = @chosen_train[train.to_i][2,2]
    erb :train_stops
  end