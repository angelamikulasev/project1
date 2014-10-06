class CountriesController < ApplicationController
	def index
		@countries = Country.all
	end

	def new
		@country = Country.new
	end

	def create
		country = Country.create country_params
		redirect_to country
	end

	def edit
	end

	def update
	end

	def show
		redirect_to country
	end

	private
	def country_params
		params.require(:country).permit(:country)
	end
end