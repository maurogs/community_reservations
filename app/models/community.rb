class Community < ActiveRecord::Base
	has_many :houses
	has_many :padel_space
	has_many :party_space
	has_many :tenis_space
	has_many :football_space
end
