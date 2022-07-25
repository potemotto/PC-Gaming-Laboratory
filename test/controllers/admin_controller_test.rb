require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get operating_systems" do
    get admin_operating_systems_url
    assert_response :success
  end

  test "should get index" do
    get admin_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_edit_url
    assert_response :success
  end
end
