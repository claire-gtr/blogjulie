class CategoryPostsController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @category_post = CategoryPost.new
    @posts = (Post.all - @category.posts)

    #to change pour avoir que les posts qui sont pas deja dans la categorie en question
  end

  def create
    @category = Category.find(params[:category_id])
    @category_post = @category.category_posts.new(category_post_params)
    if @category_post.save
      redirect_to categories_path
    else
      render "category_posts/new"
    end
  end



  private

  def category_post_params
    params.require(:category_post).permit(:post_id, :category_id, :id)
  end

end
