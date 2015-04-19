class RestaurantsController < ApplicationController
  
  http_basic_authenticate_with name: "admin", password: "password", except: [:index, :show, :new]
  
  def index
    if(session[:user_id] != nil)
      @restaurants = Restaurant.all
    else
      redirect_to "/log_in", :notice => "Please log in first!"
    end
  end
  
  def show
    if(session[:user_id] != nil)
      @restaurant = Restaurant.find(params[:id])
    else
      redirect_to "/log_in", :notice => "Please log in first!"
    end
  end
  
  def new
    if(session[:user_id] != nil)
      @restaurant = Restaurant.new
    else
      redirect_to "/log_in", :notice => "Please log in first!"
    end
  end
  
  def edit
    if(session[:user_id] != nil)
      @restaurant = Restaurant.find(params[:id])
    else
      redirect_to "/log_in", :notice => "Please log in first!"
    end
  end
 
  def create
    if(session[:user_id] != nil)
      @restaurant = Restaurant.new(restaurant_params)
 
      if @restaurant.save
        redirect_to @restaurant
      else
        render 'new'
      end
    else
      redirect_to "/log_in", :notice => "Please log in first!"
    end
    
  end
  
  def update
    if(session[:user_id] != nil)
      @restaurant = Restaurant.find(params[:id])
 
      if @restaurant.update(restaurant_params)
        redirect_to @restaurant
      else
        render 'edit'
      end
    else
      redirect_to "/log_in", :notice => "Please log in first!"
    end
  end
  
  def destroy
    if(session[:user_id] != nil)
      @restaurant = Restaurant.find(params[:id])
      @restaurant.destroy
 
      redirect_to restaurants_path
    else
      redirect_to "/log_in", :notice => "Please log in first!"
    end
  end
  
  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :operator, :accept_sna, :accept_fmn, :destribute, :only_redee, :ebt_machin, :day_time, :zip_code, :lon, :lat, :x, :y)
    end
end
