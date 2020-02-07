class AddPostalCodeIdToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_reference :restaurants, :postal_code, foreign_key: true
  end
end
