class CreatePostalCode < ActiveRecord::Migration[5.2]
  def change
    create_table :postal_codes do |t|
      t.string :post_code
      t.references :restaurant, foreign_key: true
    end
  end
end
