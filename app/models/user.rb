class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	before_create :create_remember_token

	validates :name, presence: true, length: { maximum: 55 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

	has_secure_password
	#validates :password, presence: true, length: { minimum: 6 }, on: :create
	#validates :password_confirmation, presence: true, on: :create

	class LevelType
		GENERAL = 0
		ADMINISTRATOR = 1

		NAMES = {
			GENERAL => "General",
			ADMINISTRATOR => "Administrator"
		}

		ALL = [GENERAL, ADMINISTRATOR]

		def self.for_select
			ALL.map{|t|[NAMES[t], t]}
		end
	end

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.digest(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

		def create_remember_token
			# Create the token
			self.remember_token = User.digest(User.new_remember_token)
		end
end
