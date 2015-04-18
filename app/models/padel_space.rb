class PadelSpace < ActiveRecord::Base
	belongs_to :community
	belongs_to :reservation
end
