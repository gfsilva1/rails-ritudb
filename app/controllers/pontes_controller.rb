class PontesController < ApplicationController
  before_action :set_ponte, only: :destroy
  before_action :set_ritmo, only: [:new, :create]

  def new
    @ponte = Ponte.new
  end

  def create
    @ponte = Ponte.new(ponte_params)
    @ponte.list = @ponte
    if @ponte.save
      redirect_to ritmo_path(@ritmo)
    else
      render :new
    end
  end

  def destroy
    @ponte.destroy
    redirect_to list_path(@ponte.ritmo)
  end

  private

  def ponte_params
    params.require(:ponte).permit(:comment, :estado_id)
  end

  def set_ponte
    @ponte = Ponte.find(params[:id])
  end

  def set_estado
    @estado = Estado.find(params[:estado_id])
  end
end
