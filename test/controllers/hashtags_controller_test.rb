require 'test_helper'

class HashtagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hashtag = create(:random_hashtag)
  end

  test "should get index" do
    get hashtags_url
    assert_response :success
  end

  test "should get new" do
    get new_hashtag_url
    assert_response :success
  end

  test "should show hashtag" do
    get hashtag_url(@hashtag)
    assert_response :success
  end

  test "should get edit" do
    get edit_hashtag_url(@hashtag)
    assert_response :success
  end

  test "should update hashtag" do
    patch hashtag_url(@hashtag), params: { hashtag: { name: @hashtag.name } }
    assert_redirected_to hashtag_url(@hashtag)
  end

  test "should destroy hashtag" do
    assert_difference('Hashtag.count', -1) do
      delete hashtag_url(@hashtag)
    end

    assert_redirected_to hashtags_url
  end
end
