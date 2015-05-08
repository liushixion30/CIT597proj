class UsersController < ApplicationController
  def new
    if(session[:user_id] != nil)
      redirect_to "/welcome/index", :notice => "Logged in!"
    else
      @user = User.new
    end
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to "/log_in", :notice => "Signed up! Please log in!"
    else
      render "new"
    end
  end
  
  private
  
      def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
      end
end
