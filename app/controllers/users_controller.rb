class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation))

    if @user.save # sign up was success
      redirect_to employees_path
    else
      render :new
    end
  end

end