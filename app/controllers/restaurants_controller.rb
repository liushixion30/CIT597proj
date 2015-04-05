class RestaurantsController < ApplicationController
  
  http_basic_authenticate_with name: "admin", password: "password", except: [:index, :show, :new]
  
  def index
    @restaurants = Restaurant.all
  end
  
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  
  def new
    @restaurant = Restaurant.new
  end
  
  def edit
    @restaurant = Restaurant.find(params[:id])
  end
 
  def create
    @restaurant = Restaurant.new(restaurant_params)
 
    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end
  
  def update
    @restaurant = Restaurant.find(params[:id])
 
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant
    else
      render 'edit'
    end
  end
  
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
 
    redirect_to restaurants_path
  end
  
  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :operator, :accept_sna, :accept_fmn, :destribute, :only_redee, :ebt_machin, :day_time, :zip_code, :lon, :lat, :x, :y)
    end
end