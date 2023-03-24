require "test_helper"

class Admin::JournalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_journals_index_url
    assert_response :success
  end
end
