require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get reports_top_url
    assert_response :success
  end

  test "should get index" do
    get reports_index_url
    assert_response :success
  end

  test "should get show" do
    get reports_show_url
    assert_response :success
  end

  test "should get edit" do
    get reports_edit_url
    assert_response :success
  end

end
