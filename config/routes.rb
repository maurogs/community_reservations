Rails.application.routes.draw do

  get '/' => 'site#index'
  get '/login' => 'clients#login'
  get '/login_client/:email' => 'clients#login_client'
  get '/phone' => 'site#phone'

  get '/reservations' => 'reservations#get_reservations'
  get '/recordatorio/:client_id/:reservation_id' => 'reservations#send_recordatorio'
  post '/email_recordatorio' => 'reservations#email_recordatorio'
  get '/new_reservation' => 'reservations#new_reservation'
  post '/save_reservation' => 'reservations#save_reservation'

	resources :communities  do
	    resources :houses do
	      resources :clients do
	        resources :reservations
	      end
	    end
	end
	resources :clients do
	    resources :reservations
	end
	resources :spaces
end
