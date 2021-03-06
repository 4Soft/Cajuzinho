require 'test_helper'

class AssessorsControllerTest < ActionController::TestCase
  setup do
    @assessor = assessors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assessors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assessor" do
    assert_difference('Assessor.count') do
      post :create, assessor: { role: @assessor.role }
    end

    assert_redirected_to assessor_path(assigns(:assessor))
  end

  test "should show assessor" do
    get :show, id: @assessor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assessor
    assert_response :success
  end

  test "should update assessor" do
    patch :update, id: @assessor, assessor: { role: @assessor.role }
    assert_redirected_to assessor_path(assigns(:assessor))
  end

  test "should destroy assessor" do
    assert_difference('Assessor.count', -1) do
      delete :destroy, id: @assessor
    end

    assert_redirected_to assessors_path
  end
end
