class User < ApplicationRecord
    validates :name, presence: true
    validates :email_id, presence: true, uniqueness: true
    validates :date_of_birth, presence: true
end
