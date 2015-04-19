class ReservationsController < ApplicationController
  before_action :initialize_save_reservation

	def save_reservation
		reservation = @client.reservations.new

		reservation.name = @client.name.to_s
		reservation.hour = @hour.to_s
		reservation.hour = Time.now.to_date.to_s
		reservation.space_id = @space_id

		if reservation.save
			message = { message: 'Saved' }
			format.json { render json: message }
		end
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
