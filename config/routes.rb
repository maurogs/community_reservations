Rails.application.routes.draw do

  get '/' => 'site#index'
  get '/phone' => 'site#phone'

  get '/reservations' => 'reservations#get_reservations'
  get '/reservations/:space_id' => 'reservations#get_reservations_space'
  get '/recordatorio/:client_id/:reservation_id' => 'reservations#send_recordatorio'
  post '/email_recordatorio' => 'reservations#email_recordatorio'

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
