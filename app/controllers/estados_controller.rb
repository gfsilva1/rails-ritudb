class EstadosController < ApplicationController
  def norte
    @estados_norte = Estado.where(regiao:"Norte")
  end

  def show
    @acre = Ritmo.where(nome:"Acre")
  end
end
