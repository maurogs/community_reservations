class Community < ActiveRecord::Base
	has_many :houses
	has_many :padel_spaces
	has_many :party_spaces
	has_many :tenis_spaces
	has_many :football_spaces
end
