class PicturePostsController < ApplicationController
  def index
    @picture_posts = Picture_post.all
  end

  def new
    @picture_post = Picture_post.new
  end

  def confirm
    @picture_post = Picture_post.new(post_params)
    @picture_post.user_id = current_user.id 
    render :new if @picture_post.invalid?
  end

  def create
    @picture_post = Picture_post.new(post_params)
    @picture_post.user_id = current_user.id 
    if params[:back]
      render :new
    else 
      if @picture_post.save
        redirect_to new_picture_post_path, notice: "投稿を作成しました！"
      else
        render :new
      end
    end
  end

  def show
    @picture_post = Picture_post.find(params[:id])
  end

  def edit
    @picture_post = Picture_post.find(params[:id])
  end

  def update
    @picture_post = Picture_post.find(params[:id])
    if @picture_post.update(post_params)
      redirect_to picture_posts_path, notice: "編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @picture_post = Picture_post.find(params[:id])
    @picture_post.destroy
    redirect_to picture_posts_path, notice:"削除しました！"
  end

  private

  def post_params
    params.require(:picture_post).permit(:content, :image, :image_cache)
  end
end


end
