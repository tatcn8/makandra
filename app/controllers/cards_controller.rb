class CardsController < ApplicationController
  def index 
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      redirect_to @card
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
  end

  def update
  end

  def destroy
  end

  private

  def card_params
    params_require(:card).permit(:title, :deck_id)
  end

end
