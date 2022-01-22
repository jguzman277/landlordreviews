require "test_helper"

class LandlordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get landlords_index_url
    assert_response :success
  end
end
