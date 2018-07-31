require 'test_helper'

class AnimalControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get animal_new_url
    assert_response :success
  end

end
