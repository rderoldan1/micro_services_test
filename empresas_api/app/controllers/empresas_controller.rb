class EmpresasController < ApplicationController
  # GET /empresas
  # GET /empresas.json
  def index
    @empresas = Empresa.all

    render json: @empresas
  end

  def new
    @empresa = Empresa.new

    render json: @empresa
  end

  # GET /empresas/1
  # GET /empresas/1.json
  def show
    @empresa = Empresa.find(params[:id])

    render json: @empresa
  end

  # POST /empresas
  # POST /empresas.json
  def create
    @empresa = Empresa.new(empresa_params)

    if @empresa.save
      render json: @empresa, status: :created, location: @empresa
    else
      render json: @empresa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /empresas/1
  # PATCH/PUT /empresas/1.json
  def update
    @empresa = Empresa.find(params[:id])

    if @empresa.update(empresa_params)
      head :no_content
    else
      render json: @empresa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /empresas/1
  # DELETE /empresas/1.json
  def destroy
    @empresa = Empresa.find(params[:id])
    @empresa.destroy

    head :no_content
  end

  private

    def empresa_params
      params.permit(:nombre, :direccion, :telefono, :nit, :gerente)
    end
end
