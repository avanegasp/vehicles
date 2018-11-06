Rails.application.routes.draw do

  get '/', to: "vehicles#home"
  get '/vehicles', to: "vehicles#index"
  get '/new', to: "vehicles#new"
  post '/vehicles', to: "vehicles#create"
  get '/vehicles/:id', to: "vehicles#show"
  get '/vehicles/:id/edit', to: "vehicles#edit"
  patch '/vehicles/:id', to: "vehicles#update"
  delete '/vehicles/:id', to: "vehicles#destroy"

end
