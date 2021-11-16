class EstadosController < ApplicationController
  before_action :set_estado, only: [:show, :destroy]

  def index
    @estados = Estado.all
  end

  def show
    @ponte = Ponte.new

  end

  def new
    @estado = Estado.new
  end

  def create
    @estado = Estado.new(list_params)
    if @estado.save
      redirect_to estado_path(@estado)
    else
      render :new
    end
  end

  def destroy
    @estado.destroy
    redirect_to estados_path
  end

  private

  def set_estado
    @estado = Estado.find(params[:id])
  end

  def estado_params
    params.require(:estado).permit(:nome)
  end
end
end
