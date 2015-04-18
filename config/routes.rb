Rails.application.routes.draw do

  get '/' => 'site#index'
  get '/phone' => 'site#phone'

  resources :communities  do
    resources :houses do
      resources :clients do
        resources :reservations
      end
    end
    resources :tenis_spaces
    resources :padel_spaces
    resources :party_spaces
    resources :football_spaces
  end

end
