class EntriesController < ApplicationController
	def index
		@entries = Entry.all
		# binding.pry
	end

	def new
		@entry = Entry.new
	end

	def create
		entry = Entry.new entry_params
		# binding.pry
		entry.lat = params[:lat] # geocode method that returns the latititude
		entry.long = params[:long] # geocode method that returns the longitude
		@result = Geocoder.search(entry.lat).first
		@result = Geocoder.search(entry.long).first
		entry.save
		redirect_to entry
	end

	def edit
		@entry = Entry.find params[:id]
	end

	def update
		entry = Entry.find params[:id]
		entry.update entry_params
		redirect_to entry
	end

	def show
		@entry = Entry.find params[:id]
	end

	def destroy
		entry = Entry.find params[:id]
		entry.destroy
		redirect_to entries_path
	end

	private
	def entry_params
		params.require(:entry).permit(:name, :date, :entry, :image, :location, :user_id, :country_id)
	end
end