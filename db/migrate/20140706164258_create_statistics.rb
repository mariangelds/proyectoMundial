class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.integer :juegos
      t.integer :ganados
      t.integer :perdidos
      t.integer :empatados
      t.integer :goles
      t.integer :puntaje

      t.timestamps
    end
  end
end
