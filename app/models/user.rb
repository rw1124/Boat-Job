class User < ApplicationRecord

	has_many :jobs
	
	has_secure_password

	validates :username, uniqueness: true
end
