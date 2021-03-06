require 'test_helper'

class SesionesControllerTest < ActionController::TestCase
  setup do
    @sesion = sesiones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sesiones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sesion" do
    assert_difference('Sesion.count') do
      post :create, sesion: { token: @sesion.token }
    end

    assert_redirected_to sesion_path(assigns(:sesion))
  end

  test "should show sesion" do
    get :show, id: @sesion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sesion
    assert_response :success
  end

  test "should update sesion" do
    patch :update, id: @sesion, sesion: { token: @sesion.token }
    assert_redirected_to sesion_path(assigns(:sesion))
  end

  test "should destroy sesion" do
    assert_difference('Sesion.count', -1) do
      delete :destroy, id: @sesion
    end

    assert_redirected_to sesiones_path
  end
end
