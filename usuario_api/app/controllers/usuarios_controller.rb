class UsuariosController < ApplicationController
  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.all

    render json: @usuarios
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
    @usuario = Usuario.find(params[:id])

    render json: @usuario
  end

  def new
    @usuario = Usuario.new

    render json: @usuario
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      render json: @usuario, status: :created, location: @usuario
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    @usuario = Usuario.find(params[:id])

    if @usuario.update(usuario_params)
      head :no_content
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario = Usuario.find(params[:id])
    @usuario.destroy

    head :no_content
  end

  private

    def usuario_params
      params.permit(:nombre, :apellido, :identificacion, :tipo_identificacion, :telefono)
    end
end
