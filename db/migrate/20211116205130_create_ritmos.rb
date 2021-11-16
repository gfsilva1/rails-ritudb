class CreateRitmos < ActiveRecord::Migration[6.1]
  def change
    create_table :ritmos do |t|
      t.string :nome
      t.string :descricao
      t.integer :dificuldade

      t.timestamps
    end
  end
end
