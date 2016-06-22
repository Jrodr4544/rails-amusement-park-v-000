class SessionsController < ApplicationController

  def new
  end
  
  def create
    @user = User.find_by(id: params[:user][:id])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to signin_path
    end
  end  

  def destroy
    session.destory(:user_id)
    redirect_to root_path
  end  
end
