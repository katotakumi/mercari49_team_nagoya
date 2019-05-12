class TopsController < ApplicationController
  def index
    @exhibitions = Exhibition.all
  end

  def new
    @exhibition = Exhibition.new
  end

  
  def create
    @exhibition = Exhibition.new(exhibition_params)
    if @exhibition.save  
      redirect_to controller: :tops, action: :create, notice: "商品を投稿しました"
    else 
      flash.now[:error] = 'メッセージの送信に失敗しました'
      render :new
    end
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

  def see
    @exhibition = Exhibition.find(params[:id]) 
  end

  def buy
    @exhibition = Exhibition.find_by(id: params[:id])
    @exhibition.update(purchase_id: current_user.id)
  end

  private
    def exhibition_params
      params.permit(:title, :text, :image, :category, :state, :shipping_charge, :shipping_area, :shipping_data, :price).merge(user_id: current_user.id)
    end
  
end
