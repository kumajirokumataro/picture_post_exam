module PicturePostsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_picture_posts_path
    elsif action_name == 'edit'
      picture_post_path
    end
  end 
end
