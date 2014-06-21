require 'test_helper'

class CrunchbasesControllerTest < ActionController::TestCase
  setup do
    @crunchbasis = crunchbases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crunchbases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crunchbasis" do
    assert_difference('Crunchbase.count') do
      post :create, crunchbasis: {  }
    end

    assert_redirected_to crunchbasis_path(assigns(:crunchbasis))
  end

  test "should show crunchbasis" do
    get :show, id: @crunchbasis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crunchbasis
    assert_response :success
  end

  test "should update crunchbasis" do
    patch :update, id: @crunchbasis, crunchbasis: {  }
    assert_redirected_to crunchbasis_path(assigns(:crunchbasis))
  end

  test "should destroy crunchbasis" do
    assert_difference('Crunchbase.count', -1) do
      delete :destroy, id: @crunchbasis
    end

    assert_redirected_to crunchbases_path
  end
end
