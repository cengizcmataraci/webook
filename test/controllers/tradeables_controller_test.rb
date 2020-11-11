require 'test_helper'

class TradeablesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tradeables_new_url
    assert_response :success
  end

end
