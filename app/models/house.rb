class House < ActiveRecord::Base
	has_many :clients
	belongs_to :community
end
