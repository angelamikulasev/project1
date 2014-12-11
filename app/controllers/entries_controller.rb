class EntriesController < ApplicationController
	def index
		@entries = Entry.all
	end

	def new
		@entry = Entry.new
	end

	def create
		entry = Entry.create! entry_params.merge(user_id: @current_user.id)
		redirect_to entry
	end

	# def create
	#     @entry = Entry.new user_params
	# 	#if 
	# 	@entry.save
	# 		entry[:country_id] = @country.id
	# 		redirect_to root_path
	# 		@entry.save
	# 	#else
	# 		#render: new
	# 	#end
	# end

	def edit
		@entry = Entry.find params[:id]
		@entry.save
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
		params.require(:entry).permit(:name, :date, :entry, :image, :address, :user_id, :country_id, :country)
	end
end