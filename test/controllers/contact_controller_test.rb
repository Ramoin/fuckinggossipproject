require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get contact_view_url
    assert_response :success
  end

end
