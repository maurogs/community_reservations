class Reservation < ActiveRecord::Base
	belongs_to :clients
	has_many :football_space
	has_many :padel_space
	has_many :tenis_space
	has_many :party_space
end
