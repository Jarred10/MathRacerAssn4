require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get register" do
    get :register
    assert_response :success
  end

  test "should get play" do
    get :play
    assert_response :success
  end

end
