require "test_helper"

class InspirationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get inspirations_index_url
    assert_response :success
  end

  test "should get show" do
    get inspirations_show_url
    assert_response :success
  end
end
