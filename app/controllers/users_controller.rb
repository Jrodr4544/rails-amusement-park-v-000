class UsersController < ApplicationController
  # before_action :set_user

  def index
  end

  def show
    @user
  end

  def create
    @user = User.create(user_params)
    # binding.pry
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end

  def update
  end

  def destroy
  end

  private

  # def set_user
  #   @user = User.find_by(name: params[:user][:name])
  # end

  def user_params
    params.require(:user).permit(:name, :password, :height, :happiness, :nausea, :tickets, :admin)
  end

end
