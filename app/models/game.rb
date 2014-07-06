class Game < ActiveRecord::Base
	belongs_to :stage
	belongs_to :stadium
	has_and_belongs_to_many :teams
end
