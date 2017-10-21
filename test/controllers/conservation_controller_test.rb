require 'test_helper'

class ConservationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conservation_index_url
    assert_response :success
  end

end
