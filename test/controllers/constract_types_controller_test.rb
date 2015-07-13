require 'test_helper'

class ConstractTypesControllerTest < ActionController::TestCase
  setup do
    @constract_type = constract_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:constract_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create constract_type" do
    assert_difference('ConstractType.count') do
      post :create, constract_type: { contract_type: @constract_type.contract_type }
    end

    assert_redirected_to constract_type_path(assigns(:constract_type))
  end

  test "should show constract_type" do
    get :show, id: @constract_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @constract_type
    assert_response :success
  end

  test "should update constract_type" do
    patch :update, id: @constract_type, constract_type: { contract_type: @constract_type.contract_type }
    assert_redirected_to constract_type_path(assigns(:constract_type))
  end

  test "should destroy constract_type" do
    assert_difference('ConstractType.count', -1) do
      delete :destroy, id: @constract_type
    end

    assert_redirected_to constract_types_path
  end
end
