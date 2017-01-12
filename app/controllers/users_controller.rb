class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_form)
    if @user.save
      redirect_to users_path
    end
  end

  private

  def user_form
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
