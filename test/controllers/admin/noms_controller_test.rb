require "test_helper"

class Admin::NomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_noms_index_url
    assert_response :success
  end
end
