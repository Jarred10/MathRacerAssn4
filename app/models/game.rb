class Game < ActiveRecord::Base
	validates :user1, :presence => true
	validates :user1, :presence => true, :on => :update
	validates :gameid, :presence => true

end
