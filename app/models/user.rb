class User < ApplicationRecord
    has_many :itineraries, dependent: :destroy
    has_many :cities, through: :itineraries
    has_secure_password

    validates :user_name, uniqueness: {case_sensitive: false}, length: {maximum: 20}
end
