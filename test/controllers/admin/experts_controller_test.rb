require "test_helper"

class Admin::ExpertsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_experts_index_url
    assert_response :success
  end
end
