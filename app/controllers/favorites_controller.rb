class FavoritesController < ApplicationController
  
  def index
    # @my_favorites = 
  end
  

  def create
    favorite = current_user.favorites.create(picture_post_id: params[:picture_post_id])
    redirect_to picture_posts_path, notice: "#{favorite.picture_post.user.name}さんのブログをお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to picture_posts_path, notice: "#{favorite.picture_post.user.name}さんのブログをお気に入り解除しました"
  end
end

