require 'test_helper'

class EmpresasControllerTest < ActionController::TestCase
  setup do
    @empresa = empresas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empresas)
  end

  test "should create empresa" do
    assert_difference('Empresa.count') do
      post :create, empresa: { direccion: @empresa.direccion, gerente: @empresa.gerente, nit: @empresa.nit, nombre: @empresa.nombre, telefono: @empresa.telefono }
    end

    assert_response 201
  end

  test "should show empresa" do
    get :show, id: @empresa
    assert_response :success
  end

  test "should update empresa" do
    put :update, id: @empresa, empresa: { direccion: @empresa.direccion, gerente: @empresa.gerente, nit: @empresa.nit, nombre: @empresa.nombre, telefono: @empresa.telefono }
    assert_response 204
  end

  test "should destroy empresa" do
    assert_difference('Empresa.count', -1) do
      delete :destroy, id: @empresa
    end

    assert_response 204
  end
end
