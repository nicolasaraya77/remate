require 'test_helper'

class AuctionlistingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auctionlistings_index_url
    assert_response :success
  end

end
