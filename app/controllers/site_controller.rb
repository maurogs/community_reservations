class SiteController < ApplicationController

	def index
	end

	def phone
		response = { phone: 661927307 }
		render json: response
	end
end
