class PontesController < ApplicationController
  before_action :set_ponte, only: :destroy
  before_action :set_estado, only: [:new, :create]

  def new
    @ponte = Ponte.new
  end

  def create
    @ponte = Ponte.new(ponte_params)
    @ponte.estado = @estado
    if @ponte.save

      redirect_to estado_path(@estado.id,@ponte.ritmo)
    else
      render :new
    end
  end

  def destroy
    @ponte.destroy
    redirect_to estado_path(@ponte.ritmo)
  end

  private

  def ponte_params
    params.require(:ponte).permit(:comment, :ritmo_id)
  end

  def set_ponte
    @ponte = Ponte.find(params[:id])
  end

  def set_estado
    @estado = Estado.find(params[:estado_id])
  end
end
