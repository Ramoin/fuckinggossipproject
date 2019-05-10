require 'test_helper'

class TeamControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get team_view_url
    assert_response :success
  end

end
