class CommunitiesController < ApplicationController
	def index
		@spaces = Space.all
	end
end
