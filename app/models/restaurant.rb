class Restaurant < ApplicationRecord
  validates_presence_of :name, :address, :post_code, :category
  validates_numericality_of :number_of_chairs, numericality: { only_integer: true }

end
