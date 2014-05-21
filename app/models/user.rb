class User < ActiveRecord::Base

	# sauvegarde l'email en minuscule
	before_save { email.downcase! }

	# nom
	validates :name,  presence: true, length: { maximum: 50 }

	# email
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

	# mot de passe
	has_secure_password
	validates :password, length: { minimum: 6 }	
	
end
