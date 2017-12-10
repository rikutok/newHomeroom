require 'test_helper'

class HomeroomsControllerTest < ActionController::TestCase
  setup do
    @homeroom = homerooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homerooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homeroom" do
    assert_difference('Homeroom.count') do
      post :create, homeroom: { class: @homeroom.class, mail: @homeroom.mail, name: @homeroom.name, student: @homeroom.student }
    end

    assert_redirected_to homeroom_path(assigns(:homeroom))
  end

  test "should show homeroom" do
    get :show, id: @homeroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homeroom
    assert_response :success
  end

  test "should update homeroom" do
    patch :update, id: @homeroom, homeroom: { class: @homeroom.class, mail: @homeroom.mail, name: @homeroom.name, student: @homeroom.student }
    assert_redirected_to homeroom_path(assigns(:homeroom))
  end

  test "should destroy homeroom" do
    assert_difference('Homeroom.count', -1) do
      delete :destroy, id: @homeroom
    end

    assert_redirected_to homerooms_path
  end
end
