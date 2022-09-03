class User < ApplicationRecord
    has_many :spendings
    has_secure_password
    validates :name, presence: true
    validates :email_id, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
    validates :date_of_birth, presence: true
    validates :password_digest, presence: true
end
