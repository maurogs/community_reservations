class CommunitiesController < ApplicationController
	def index
		@comunities = Community.all
	end
end
