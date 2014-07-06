class CreateTeamsGames < ActiveRecord::Migration
  def change
    create_table :teams_games do |t|
    	t.references :team
    	t.references :game 
    end
  end
end
