class Admin::UsersController < ApplicationController

    def index
        @users = User.all
    end

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
