class UsersController < ApplicationController
    before_action :before_login, only: :show
    before_action :authenticate_user!, except: :new

  # def index
  # end

  def create

  end

  def show
    @user = User.find(params[:id])
  end

  def update

  end

  def logout
    
  end

  private

  def before_login
    redirect_to new_user_session_path unless user_signed_in?
  end
end
