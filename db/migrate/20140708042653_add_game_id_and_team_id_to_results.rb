class AddGameIdAndTeamIdToResults < ActiveRecord::Migration
  def change
    add_column :results, :game_id, :integer
    add_column :results, :team_id, :integer
  end
end
