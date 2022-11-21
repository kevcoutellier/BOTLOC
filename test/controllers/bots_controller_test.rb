require "test_helper"

class BotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bots_index_url
    assert_response :success
  end

  test "should get new" do
    get bots_new_url
    assert_response :success
  end

  test "should get create" do
    get bots_create_url
    assert_response :success
  end

  test "should get show" do
    get bots_show_url
    assert_response :success
  end
end
