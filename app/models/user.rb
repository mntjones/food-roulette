class User < ApplicationRecord
	has_secure_password
	has_many :meals
	has_many :restaurants, through: :meals
	
end
