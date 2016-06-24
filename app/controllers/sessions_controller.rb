class SessionsController < ApplicationController

  def new
  end

  def create
    # binding.pry
    @user = User.find_by(name: params[:user][:name]) || User.find(params[:user][:id])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to signin_path
    end
  end  

  def destroy
    session.destroy
    redirect_to root_path
  end  
end
