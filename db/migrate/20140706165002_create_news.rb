class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :titulo
      t.datetime :fecha
      t.datetime :hora
      t.text :contenido
      t.string :foto

      t.timestamps
    end
  end
end
