class CardsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
  	@card = Card.new
  end

  def create
    puts "SAVING"
  	@user = User.find(params[:user_id])
		@card = @user.cards.create(card_params)
    @card = Card.create(card_params)
    if @card.save
      redirect_to @user
    else
      puts "TEST"
      redirect_to root_path
    end
  end

  def share
    user = User.find(params[:user_id])
    card = Card.find(params[:card_id])
    if user.cards << card
      puts "ADDED THIS"
      respond_to do |format|
        format.js
      end
    else
      redirect_to root_path
    end
  end

  private

  def card_params
      params.require(:card).permit(:account, :type, :month, :year)
  end

end
