require 'test_helper'

class DifferencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get differences_index_url
    assert_response :success
  end

end
