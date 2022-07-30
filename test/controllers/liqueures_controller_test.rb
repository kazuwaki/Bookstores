require "test_helper"

class LiqueuresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get liqueures_index_url
    assert_response :success
  end
end
