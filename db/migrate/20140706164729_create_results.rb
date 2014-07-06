class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :golesGanados
      t.integer :golesPerdidos
      t.integer :empate
      t.integer :desenlace

      t.timestamps
    end
  end
end
