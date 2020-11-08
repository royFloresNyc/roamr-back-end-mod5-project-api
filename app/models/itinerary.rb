class Itinerary < ApplicationRecord
  belongs_to :user
  belongs_to :city

  def city_props=(city)
    self.city = City.find_or_create_by(city)
  end 
end
