class CreatePontes < ActiveRecord::Migration[6.1]
  def change
    create_table :pontes do |t|
      t.string :comment
      t.integer :ritmo_id
      t.integer :estado_id

      t.timestamps
    end
  end
end
