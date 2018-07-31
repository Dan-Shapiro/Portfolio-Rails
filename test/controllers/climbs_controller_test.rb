require 'test_helper'

class ClimbsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get climbs_index_url
    assert_response :success
  end

  test "should get show" do
    get climbs_show_url
    assert_response :success
  end

end
