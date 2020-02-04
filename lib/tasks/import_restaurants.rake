require 'csv'

namespace :import do
  desc "Import cafes/restaurants from csv file"
  task restaurant_data: :environment do
    CSV.foreach('./csv/street_cafes_2015-2016.csv', headers: true) do |row|
      row_data = row.to_h

      Restaurant.create(name: row_data["Cafe/Restaurant Name"],
                        address: row_data["Street Address"],
                        post_code: row_data["Post Code"],
                        number_of_chairs: row_data["Number of Chairs"])

    end
  end
end
