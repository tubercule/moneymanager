require 'test_helper'

class PayementMethodsControllerTest < ActionController::TestCase
  setup do
    @payement_method = payement_methods(:one)
    @update = {
    						title:	'Lorem Ipsum'
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payement_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payement_method" do
    assert_difference('PayementMethod.count') do
      post :create, @update
    end

    assert_redirected_to payement_method_path(assigns(:payement_method))
  end

  test "should show payement_method" do
    get :show, id: @payement_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payement_method
    assert_response :success
  end

  test "should update payement_method" do
    patch :update, id: @payement_method, @update
    assert_redirected_to payement_method_path(assigns(:payement_method))
  end

  test "should destroy payement_method" do
    assert_difference('PayementMethod.count', -1) do
      delete :destroy, id: @payement_method
    end

    assert_redirected_to payement_methods_path
  end
end
