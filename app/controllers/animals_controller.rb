class AnimalsController < ApplicationController

	def index
		@animals = Animal.all
	end	

	def show
		@animal = Animal.find(params[:id])
		
	end	

	def new
		@shelter = Shelter.find(params[:shelter_id])
		@animal = @shelter.animals.new
	end	

	
	
end	