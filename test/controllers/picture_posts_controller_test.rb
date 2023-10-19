require "test_helper"

class PicturePostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get picture_posts_index_url
    assert_response :success
  end
end
