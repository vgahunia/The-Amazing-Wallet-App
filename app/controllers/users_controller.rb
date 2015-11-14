class UsersController < ApplicationController
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
    if @user.save
      log_in @user
    	flash[:success] = "Welcome to AMAZING!"
      redirect_to @user
    else
      render 'new'
    end
	end

	def show
		@user = User.find(params[:id])
	end

	def index
		@users = User.all
		@user = User.find(params[:user_id])
		@card = Card.find(params[:card_id])
	end


  private

  def user_params
      params.require(:user).permit(:first, :last, :phone, :balance, :email)
  end

end
