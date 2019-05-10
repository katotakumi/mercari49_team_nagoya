class UsersController < ApplicationController
  # before_action :authenticate_user!, except: :new
  before_action :before_login, only:[:show]
  before_action :set_user, only:[:show]

  def index

  end

  def create
  end
  
  def show
    if current_user.id == @user.id
    else
      redirect_to root_path
    end
    @nickname = current_user.nickname
    # exhibitionsテーブルのproduct_name(カラム名は仮置き)の最新4件を取得 
    @exhibitions = exhibitions.product_name.page(params[:page]).per(4).order("created_at DESC")
  end

  def update

  end
  private
  def before_login
    redirect_to new_user_session_path unless user_signed_in?
  end

  def set_user
    @user = User.find(params[:id])
  end
end
