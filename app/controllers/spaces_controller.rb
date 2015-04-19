class SpacesController < ApplicationController
	before_action :set_space, only: [:show, :edit, :update, :destroy]

	def index
		@spaces = Space.all.order("created_At ASC")
	end

	def new	
		@space = Space.new
	end

	def create
		@space = Space.new space_params

		if @space.save
			redirect_to communities_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @space.update_attributes(space_params)
			redirect_to communities_path
		else
			render 'edit'
		end
	end
	
	def destroy
		@space.destroy
		redirect_to communities_path
	end
	
	protected

	def space_params
		params.require(:space).permit(:name, :type_space, :description)
	end

	def set_space
		@space = Space.find(params[:id])
	end
end
