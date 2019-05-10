class UsersController < ApplicationController
    before_action :before_login, only: :show

  def index

  end

  def create

  end

  def show

  end

  def update

  end

  private
  
  def before_login
    redirect_to new_user_session_path unless user_signed_in?
  end
end
