class ReservationsController < ApplicationController
  before_action :initialize_save_reservation, only: [:save_reservation]

	def index
		@client = Client.find(params[:client_id])
		@reservations = @client.reservations.all
	end

	def new_reservation
		@spaces = Space.all
		@hours = ['9:00', '10:00','11:00', '12:00','13:00', '14:00','15:00', '16:00','17:00', '18:00','19:00', '20:00','21:00', '22:00']
	end

	def get_reservations
 		@reservations = Reservation.all
	end

	def save_reservation
		if @client.blank?
			@client = Client.new 
			@client.name = @client_name
		end
		reservation = @client.reservations.new

		reservation.name = @client.name.to_s
		reservation.hour = @hour.to_s
		reservation.date = Time.now.to_date.to_s
		reservation.space_id = @space_id.to_i

		if @client.save and reservation.save
			message = { message: 'Saved' }
			render json: message
		end
	end

	def send_recordatorio
		@client = Client.find(params[:client_id])
		@reservation = Reservation.find(params[:reservation_id])
		@space = Space.find(@reservation.space_id)
	end

	def email_recordatorio
		@client = Client.find(params[:client_id])
		@message = params[:message]
		# mailer
		message = { message: '¡Email enviado con éxito!' }
		render json: message
	end

	def initialize_save_reservation
		@hour = entry_params[:hour]
		@client_name = entry_params[:client_name]
		@client = Client.where('name = ?', @client_name).first
		# @client = Client.find(@client_id)
		@space_id = entry_params[:space_id]
		@space = Space.find(@space_id)
	end
	
	def entry_params
    	params.permit(:hour, :client_name, :space_id) 
	end
end
