class TopsController < ApplicationController
  def index
    @exhibitions = Exhibition.all
  end

  def new
    @exhibitions = Exhibition.new
  end

  
  def create
    Exhibition.create!(exhibition_params)
  end
  
  


  def show 
    @exhibition = Exhibition.find(params[:id])   
  end
  
  def destroy 
  end

  def edit
  end

  def update
  end

  private
    def exhibition_params
      params.permit(:title, :text, :image, :category, :state, :shipping_charge, :shipping_area, :shipping_data, :price)
    end
  
end
