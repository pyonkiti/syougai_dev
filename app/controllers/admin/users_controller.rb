class Admin::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  def edit
  end

  def show
  end

  def index
  end

  private

  def user_params
    params.require(:user).permit(
        :name,
        :name_id,
        :admin,
        :password,
        :password_confirmation
    )
  end
end
