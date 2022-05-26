class UsersController < ApplicationController
  before_action :authenticate_user!, except: :home

  def show
  end

  def update
  end

  def home
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_name, :role,
    							 :email, :password)
  end
end