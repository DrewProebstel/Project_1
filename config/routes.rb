Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/dropzones', to: 'dropzones#index'
  get '/dropzones/new', to: 'dropzones#new'
  get '/dropzones/:id', to:'dropzones#show'
  get '/dropzones/:id/skydivers/new', to: 'dropzone_skydivers#new'
  get '/dropzones/:id/skydivers', to:'dropzone_skydivers#index'
  post '/dropzones/:id/skydivers', to:'dropzone_skydivers#create'
  post '/dropzones', to: 'dropzones#create'
  get '/dropzones/:id/edit', to:'dropzones#edit'
  patch '/dropzones/:id', to: 'dropzones#update'
  delete '/dropzones/:id', to: 'dropzones#destroy'

  get '/skydivers', to: 'skydivers#index'
  get '/skydivers/:id', to:'skydivers#show'
  get '/skydivers/:id/edit', to:'skydivers#edit'
  patch '/skydivers/:id', to: 'skydivers#update'
  delete '/skydivers/:id', to: 'skydivers#destroy'


end
