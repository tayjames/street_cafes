class Restaurant < ApplicationRecord
  belongs_to :postal_code

  validates_presence_of :name, :address, :post_code, :category
  validates_numericality_of :number_of_chairs, numericality: { only_integer: true }

  def total_chairs
    #binding.pry
  end
end
