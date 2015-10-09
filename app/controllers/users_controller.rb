class UsersController < ApplicationController
	
	def index
		@users = User.all
		@user = User.find(params[:user_id])
		@card = Card.find(params[:card_id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		redirect_to @user
	end

	def show
		@user = User.find(params[:id])
	end

	# def create
	# 	if !params[:user].nil?
 #            @user = User.new(params[:user])
 #            if @user.save
 #              if @user.errors.full_messages.any? 
 #                  flash[:alert] = @user.errors.messages[:email]
 #              end
 #              redirect_to '/' 
 #            end
 #        else
 #            @user = User.new
 #        end
 #    end

  private

  def user_params
      params.require(:user).permit(:first, :last, :phone, :balance, :email)
  end

end
