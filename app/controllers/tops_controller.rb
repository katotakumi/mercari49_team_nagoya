class TopsController < ApplicationController
  before_action :redirect_to_index, except: [:index, :show]
  def index
    @exhibitions = Exhibition.order("created_at DESC").limit(4)
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
    if @exhibition.purchase_id.present?
      redirect_to controller: :tops, action: :buyed
    else
      render :show
    end
  end

  def destroy
    
  end

  def edit
    @exhibition = Exhibition.find(params[:id]) 
  end

  def update
    @exhibition = Exhibition.find(params[:id]) 
    if exhibition.user_id == current_user.id
      tweet.update(exhibition_params)
    end

  end

  def see
    @exhibition = Exhibition.find(params[:id]) 
  end

  def buy
    @exhibition = Exhibition.find_by(id: params[:id])
    @exhibition.update(purchase_id: current_user.id)
  end

  def buyed
    @exhibition = Exhibition.find(params[:id]) 
  end

  private
    def exhibition_params
      params.permit(:title, :text, :image, :category, :state, :shipping_charge, :shipping_area, :shipping_data, :price, :purchase_id).merge(user_id: current_user.id)
    end

    def redirect_to_index
      redirect_to action: :index unless user_signed_in?
    end
end
