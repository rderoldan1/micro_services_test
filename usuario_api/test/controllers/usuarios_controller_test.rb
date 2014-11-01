require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuarios)
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post :create, usuario: { apellido: @usuario.apellido, identificacion: @usuario.identificacion, nombre: @usuario.nombre, telefono: @usuario.telefono, tipo_identificacion: @usuario.tipo_identificacion }
    end

    assert_response 201
  end

  test "should show usuario" do
    get :show, id: @usuario
    assert_response :success
  end

  test "should update usuario" do
    put :update, id: @usuario, usuario: { apellido: @usuario.apellido, identificacion: @usuario.identificacion, nombre: @usuario.nombre, telefono: @usuario.telefono, tipo_identificacion: @usuario.tipo_identificacion }
    assert_response 204
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete :destroy, id: @usuario
    end

    assert_response 204
  end
end
