require 'test_helper'

class ItemOrderedsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get item_ordereds_create_url
    assert_response :success
  end

end
