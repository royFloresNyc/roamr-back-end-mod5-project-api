class CreateItineraries < ActiveRecord::Migration[6.0]
  def change
    create_table :itineraries do |t|
      t.belongs_to :user, null: false, foreign_key: true
    #   t.belongs_to :city, null: false, foreign_key: true
      t.integer :city_id

      t.timestamps
    end
  end
end
