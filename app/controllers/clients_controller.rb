class ClientsController < ApplicationController
	
	def show
		@shelter = Shelter.find(params[:shelter_id])
		@client = Client.find(params[:id])
		@animals = @client.animals
	end	

	def new
		@shelter = Shelter.find(params[:shelter_id])
		@client = @shelter.clients.new
	end	
end	