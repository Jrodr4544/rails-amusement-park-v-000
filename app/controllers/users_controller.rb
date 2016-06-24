class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def index
  end

  def new
    @user = User.new
  end

  def show
    # set_user passes @user to form only when actions [:show,:edit,:update] are called
  end

  def create
    @user = User.create(user_params)
    # binding.pry
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to signin_path
    end
  end

  def update
  end

  def destroy
    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :password, :height, :happiness, :nausea, :tickets, :admin)
  end

end
