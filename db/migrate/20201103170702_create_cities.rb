class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :city_name
      t.string :country_name
      t.string :description
      t.string :place_id

      t.timestamps
    end
  end
end
