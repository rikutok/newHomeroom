require 'test_helper'

class NewTeacherControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
