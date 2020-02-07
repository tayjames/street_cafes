class PostalCode < ApplicationRecord
  has_many :restaurants
  validates_presence_of :post_code

  def total_chairs
    self.restaurants.sum(:number_of_chairs)
  end

  # def chairs_percentage
  #   total_chairs / (@restaurants.sum {|x| x.number_of_chairs})
  # end
end
