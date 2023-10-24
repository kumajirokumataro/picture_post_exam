class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]
  #skip_before_action :login_required, only: [:new, :create]
#showもonly: [:new, :create, :show]というように追加するかも
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to picture_posts_path, notice: "編集しました！"
    else
      render :edit
    end
  end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :image_cache)
    end

    def correct_user
      @user = User.find(params[:id])
      if @user.id != current_user.id
        redirect_to picture_posts_path, notice: "権限がありません！"
      end
    end
end
