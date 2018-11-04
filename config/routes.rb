Rails.application.routes.draw do

  get '/', to: "vehicles#home"
  get '/index', to: "vehicles#index"
  get '/new', to: "vehicles#new"
  post '/index', to: "vehicles#create"


end
