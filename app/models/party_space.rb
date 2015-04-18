class PartySpace < ActiveRecord::Base
	belongs_to :community
	belongs_to :reservation
end
