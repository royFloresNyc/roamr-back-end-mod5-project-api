class City < ApplicationRecord
    has_many :itineraries, dependent: :destroy
    has_many :users, through: :itineraries
end
