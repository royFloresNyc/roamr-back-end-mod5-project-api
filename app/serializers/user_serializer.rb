class UserSerializer < ActiveModel::Serializer
    has_many :cities, through: :itineraries
    attributes :id, :user_name, :first_name, :last_name, :email_address, :image_url

end 