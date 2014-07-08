class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :nombre
      t.string :telefono
      t.string :direccion
      t.datetime :fecha_nac
      t.string :compañia
      t.string :twitter
      t.string :facebook
      t.integer :user_id

      t.timestamps
    end
  end
end



