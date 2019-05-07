class UsersController < ApplicationController
  def create
    
  end
  def show
    # 現在ログインしているユーザーであるか
    user = User.find(params[:id])
    @nickname = current_user.nickname
    # exhibitionsテーブルのproduct_name(カラム名は仮置き)の最新4件を取得 
    @exhibitions = exhibitions.product_name.page(params[:page]).per(4).order("created_at DESC")
  end
end
