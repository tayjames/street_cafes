class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @postals = PostalCode.all
  end
end
