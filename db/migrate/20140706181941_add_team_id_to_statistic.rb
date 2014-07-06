class AddTeamIdToStatistic < ActiveRecord::Migration
  def change
    add_column :statistics, :team_id, :integer
  end
end
