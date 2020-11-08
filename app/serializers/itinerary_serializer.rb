class ItinerarySerializer < ActiveModel::Serializer
    belongs_to :city
    attributes :id, :user_id, :city
end 