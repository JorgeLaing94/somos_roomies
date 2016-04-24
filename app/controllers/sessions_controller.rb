class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.find_by(name: params[:name])
    redirect_to '/login' if @user.nil?
    return if @user.nil?
    if @user.password == params[:password]
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to '/login'
    end
  end

  def destroy
    reset_session
    redirect_to '/'
  end
end
