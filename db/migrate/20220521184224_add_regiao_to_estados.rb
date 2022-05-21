class AddRegiaoToEstados < ActiveRecord::Migration[6.1]
  def change
    add_column :estados, :regiao, :string
  end
end
