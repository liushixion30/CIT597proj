class CommentsController < ApplicationController
  
  http_basic_authenticate_with name: "admin", password: "password", only: :destroy
  
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @comment = @restaurant.comments.create(comment_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @comment = @restaurant.comments.find(params[:id])
    @comment.destroy
    redirect_to restaurant_path(@restaurant)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
