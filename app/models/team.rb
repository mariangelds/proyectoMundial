class Team < ActiveRecord::Base
	belongs_to :group
	has_one :statistic
	has_and_belongs_to_many :games
end
