class PagesController < ApplicationController
  def home
  end

  def ritmos
    @ritmos = Ritmo.all
  end

  def show
    @ritmo = Ritmo.find(params[:id])
  end
end
