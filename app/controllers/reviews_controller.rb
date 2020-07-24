class ReviewsController < ApplicationController

  def create
    @product = Product.find_by(params[:product_id])
    @review = @product.review.create(review_params)
    redirect_to tag_path(@product)
  end

  def destroy
    @product = Product.find_by(params[:product_id])
    @review = @product.review.find(params[:id])
    @review.destroy
    redirect_to tag_path(@product)

  end

  private def review_params
      params.require(:review).permit(:username,:body)
  end
end
