class HomeController < ApplicationController
  def index
  end

  def search
    #                                id's Array
    @stickers = Rating.and_stickers_for_ids(Sticker.all.ids).sort {|a, b| b.rating <=> a.rating}
  end

  
  
  ## Pagination
  
  def get_stickers
    # If params have page then set page = this param
    # else set page = 1
    page = params[:page].present? ? params[:page] : 1

    
  end

  
  
  
  
  
  
  
  
  
  def about
  end

end
