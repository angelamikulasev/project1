class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to countries_path, :flash => {:notice => "Welcome to Travel Trax #{ @user.name }"}
    else
      render :new
    end
	end

  def edit
    @user = @current_user
  end

  def update
    user = @current_user
    user.update user_params
    redirect_to country_path
  end

	def show
		@user = User.find params[:id]
	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :password)
	end


end
