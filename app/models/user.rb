class User < ApplicationRecord
	has_many :microposts, dependent: :destroy
	validates :email, presence: true
	# validates :username, presence: true
	# has_secure_password
    # validates :password, length: { minimum: 6 }
	validates :password, presence: true
	validates :password_confirm, presence: true

end
