class DecksController < ApplicationController
  def index 
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new(deck_params)

    if @deck.save
      redirect_to @deck
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

  def deck_params
    params.require(:deck).permit(:title, :organization_id)
  end
end
