class TagsController < ApplicationController
  def index
    @tag = Tag.all
end

def new
  @tag = Tag.new
end

def create
  #render plain: params[:tag].inspect
  @tag = Tag.new(tag_params)
  if(@tag.save)
    redirect_to @tag, notice: 'New Category created successfully.'
  else
    render 'new'
  end
end

def show
    @tag = Tag.find(params[:id])
end

def edit
    @tag = Tag.find(params[:id])
end

def update
    @tag = Tag.find_by(params[:id])
    if(@tag.update(tag_params))
      redirect_to @tag, notice: 'Category updated successfully.'
    else
      render 'edit'
    end
end

def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path,  notice: 'Category deleted successfully.'
end

private def tag_params
  params.require(:tag).permit(:tagname)
end
end
