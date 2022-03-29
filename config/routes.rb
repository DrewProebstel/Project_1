Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/dropzones', to: 'dropzones#index'
  get '/dropzones/new', to: 'dropzones#new'
  get '/dropzones/:id', to:'dropzones#show'
  get '/dropzones/:id/skydivers', to:'dropzone_skydivers#index'
  post '/dropzones', to: 'dropzones#create'

  get '/skydivers', to: 'skydivers#index'
  get '/skydivers/:id', to:'skydivers#show'



end
