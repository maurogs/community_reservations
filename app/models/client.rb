class Client < ActiveRecord::Base
	belongs_to :houses
	has_many :reservations
end
