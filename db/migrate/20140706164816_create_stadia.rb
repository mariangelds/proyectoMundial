class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
      t.string :nombre
      t.string :direccion

      t.timestamps
    end
  end
end
