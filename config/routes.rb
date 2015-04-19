Rails.application.routes.draw do

  get '/' => 'site#index'
  get '/phone' => 'site#phone'

  resources :communities  do
    resources :houses do
      resources :clients do
        resources :reservations
      end
    end
    resources :spaces
end
