class WelcomeController < ApplicationController
  def index
    if(session[:user_id] != nil)
    else
      redirect_to "/log_in", :notice => "Please log in first!"
    end
  end
end
