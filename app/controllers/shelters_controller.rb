class SheltersController < ApplicationController
	
	def index
		@shelter = Shelter.all
	end	

	def show
		@shelter = Shelter.find(params[:id])
		@clients = @shelter.clients
		@animals = @shelter.animals
	end	
end	