require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get secret" do
    get static_pages_secret_url
    assert_response :success
  end

end
