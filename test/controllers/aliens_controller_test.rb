require 'test_helper'

class AliensControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get aliens_home_url
    assert_response :success
  end

end
