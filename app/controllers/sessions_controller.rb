class SessionsController < ApplicationController

  def new
  end

  def create # the act of logging in
    user = User.find_by(email: params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      flash[:success] = "You logged in successfully!"
      session[:user_id] = user.id
      redirect_to ingredients_path
    else
      flash.now[:danger] = "Username or password incorrect."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end













