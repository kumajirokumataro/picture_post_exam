class ApplicationController < ActionController::Base
  include SessionsHelper

  def set_post
    @picture_post = PicturePost.find(params[:id])
  end
end
