require 'test_helper'

class FixitTestsControllerTest < ActionController::TestCase
  setup do
    @fixit_test = fixit_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fixit_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fixit_test" do
    assert_difference('FixitTest.count') do
      post :create, fixit_test: { details: @fixit_test.details, email: @fixit_test.email, location: @fixit_test.location, picture: @fixit_test.picture, type: @fixit_test.type }
    end

    assert_redirected_to fixit_test_path(assigns(:fixit_test))
  end

  test "should show fixit_test" do
    get :show, id: @fixit_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fixit_test
    assert_response :success
  end

  test "should update fixit_test" do
    patch :update, id: @fixit_test, fixit_test: { details: @fixit_test.details, email: @fixit_test.email, location: @fixit_test.location, picture: @fixit_test.picture, type: @fixit_test.type }
    assert_redirected_to fixit_test_path(assigns(:fixit_test))
  end

  test "should destroy fixit_test" do
    assert_difference('FixitTest.count', -1) do
      delete :destroy, id: @fixit_test
    end

    assert_redirected_to fixit_tests_path
  end
end
