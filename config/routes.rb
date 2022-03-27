Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/dropzones', to: 'dropzones#index'
  get '/dropzones/:id', to:'dropzones#show'

  get '/skydivers', to: 'skydivers#index'
end
