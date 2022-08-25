require 'test_helper'

class ShipmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shipment_index_url
    assert_response :success
  end

  test "should get show" do
    get shipment_show_url
    assert_response :success
  end

end
