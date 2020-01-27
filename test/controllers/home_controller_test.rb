require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get public" do
    get home_public_url
    assert_response :success
  end

  test "should get private" do
    get home_private_url
    assert_response :success
  end

end
