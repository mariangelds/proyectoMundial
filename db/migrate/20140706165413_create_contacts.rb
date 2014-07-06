class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :nombre
      t.string :email
      t.text :mensaje

      t.timestamps
    end
  end
end
