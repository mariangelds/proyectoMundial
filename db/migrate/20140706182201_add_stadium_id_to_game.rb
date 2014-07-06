class AddStadiumIdToGame < ActiveRecord::Migration
  def change
    add_column :games, :stadium_id, :integer
  end
end
