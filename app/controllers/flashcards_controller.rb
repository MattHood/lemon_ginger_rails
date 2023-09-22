class FlashcardsController < ApplicationController
  def new
    @flashcard = Flashcard.create
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
    @flashcard = Flashcard.find(params[:id])
  end

  def index
  end

  def destroy
  end
  
  private
  
  def shoe_params
    params.require # 
  end
end
