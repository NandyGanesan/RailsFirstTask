class ProductsController < ApplicationController
  def index
    @tag = Tag.find(params[:tag_id])
    @product = @tag.Product.all
  end

  def new
    @tag = Tag.find(params[:tag_id])
  end

  def create
    @tag = Tag.find(params[:tag_id])
    @product = @tag.product.create(product_params)
    redirect_to tag_path(@tag), notice: 'New Product stored successfully.'
  end

  def show
    @tag = Tag.find(params[:id])
    @product = @tag.product.find(params[:tag_id])
  end

  def edit
    @tag = Tag.find(params[:id])
    @product = @tag.product.find(params[:tag_id])
  end

  def update
    @tag = Tag.find(params[:id])
    @product = @tag.product.update(product_params)
    redirect_to tag_path(@product), notice: 'Product updated successfully.'
  end

  def destroy
    @tag = Tag.find(params[:id])
    @product = @tag.product.find(params[:tag_id])
    if(@product.destroy)
      redirect_to tag_path(@tag), notice: 'Product deleted successfully.'
    else
      redirect_to tag_product_path(@product)
    end
  end

  private def product_params
    params.require(:product).permit(:productname)
  end
end
