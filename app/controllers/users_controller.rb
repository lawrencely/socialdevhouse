class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @current_user = @user
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
    @user = @current_user
  end

  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to user_path
  end

  def show
    @user = User.find params[:id]
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
