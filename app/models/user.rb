class User < ApplicationRecord
    has_many :user_travels
    before_save {self.email = email.downcase }

    validates :username, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,
                uniqueness: {case_sensitive: false},
                format: { with: VALID_EMAIL_REGEX }
    has_secure_password
    validates :password, presence: true
    validates :password, confirmation: {case_sensitive: true}
end