class TenisSpace < ActiveRecord::Base
	belongs_to :community
	belongs_to :reservation
end
