require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get main1" do
    get homes_main1_url
    assert_response :success
  end

  test "should get main2" do
    get homes_main2_url
    assert_response :success
  end

end
