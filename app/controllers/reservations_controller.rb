class ReservationsController < ApplicationController
  before_action :initialize_save_reservation, only: [:save_reservation]

	def index
		@client = Client.find(params[:client_id])
		@reservations = @client.reservations.all
	end

	def get_reservations
 		@reservations = Reservation.all
	end

	def save_reservation
		reservation = @client.reservations.new

		reservation.name = @client.name.to_s
		reservation.hour = @hour.to_s
		reservation.date = Time.now.to_date.to_s
		reservation.space_id = @space_id

		if reservation.save
			message = { message: 'Saved' }
			format.json { render json: message }
		end
	end

	def send_recordatorio
		@client = Client.find(params[:client_id])
		@reservation = Reservation.find(params[:reservation_id])
		@space = Space.find(@reservation.space_id)
	end

	def email_recordatorio
		@client = Client.find(params[:client_id])
		# mailer
	end

	def initialize_save_reservation
		@hour = entry_params[:hour]
		@client_id = entry_params[:client_id]
		@client = Client.find(@client_id)
		@space_id = entry_params[:space_id]
	end

	def entry_params
    params.permit(:hour, :client, :space) 
  end
end
