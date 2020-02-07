require 'rails_helper'

RSpec.describe 'Post Code Page' do
  describe 'As a visitor' do
    before :each do
      @pc_1 = PostalCode.create!(post_code: "LS1 5BN")
      @pc_2 = PostalCode.create!(post_code: "LS2 3AD")
      @pc_3 = PostalCode.create!(post_code: "LS1 2AT")
      @pc_4 = PostalCode.create!(post_code: "LS1 6AZ")
      @pc_5 = PostalCode.create!(post_code: "LS1 8EQ")

      @restaurant_1 = @pc_1.restaurants.create!(name: "Restaurant 1", address: "First St", post_code: "LS1 5BN", number_of_chairs: 20, category: "???")
      @restaurant_2 = @pc_2.restaurants.create!(name: "Restaurant 2", address: "Second St", post_code: "LS2 3AD", number_of_chairs: 20, category: "???")
      @restaurant_3 = @pc_3.restaurants.create!(name: "Restaurant 3", address: "Third St", post_code: "LS1 2AT", number_of_chairs: 20, category: "???")
      @restaurant_4 = @pc_4.restaurants.create!(name: "Restaurant 4", address: "Fourth St", post_code: "LS1 6AZ", number_of_chairs: 20, category: "???")
      @restaurant_5 = @pc_5.restaurants.create!(name: "Restaurant 5", address: "Fifth St", post_code: "LS1 8EQ", number_of_chairs: 20, category: "???")
      @restaurant_6 = @pc_5.restaurants.create!(name: "Restaurant 6", address: "Sixth St", post_code: "LS1 8EQ", number_of_chairs: 20, category: "???")
    end

    it "I can see the post code" do
      visit '/restaurants'

      expect(page).to have_content(@restaurant_1.post_code)
      expect(page).to have_content(@restaurant_2.post_code)
      expect(page).to have_content(@restaurant_3.post_code)
      expect(page).to have_content(@restaurant_4.post_code)
      expect(page).to have_content(@restaurant_5.post_code)
    end

    it "I can see the total number of cafes in each post code" do
      visit '/restaurants'

      expect(page).to have_content(@pc_1.restaurants.count)
      expect(page).to have_content(@pc_2.restaurants.count)
      expect(page).to have_content(@pc_3.restaurants.count)
      expect(page).to have_content(@pc_4.restaurants.count)
      expect(page).to have_content(@pc_5.restaurants.count)
    end

    it "I can see the total number of chairs in each post code" do
      visit '/restaurants'

      expect(page).to have_content(@pc_1.total_chairs)
      expect(page).to have_content(@pc_2.total_chairs)
      expect(page).to have_content(@pc_3.total_chairs)
      expect(page).to have_content(@pc_4.total_chairs)
      expect(page).to have_content(@pc_5.total_chairs)
    end

    it "I can see the percentage of all chairs in a post code" do
      visit '/restaurants'
      expect(page).to have_content(@pc_1.chairs_percentage)
      # expect(page).to have_content(@pc_2.total_chairs)
      # expect(page).to have_content(@pc_3.total_chairs)
      # expect(page).to have_content(@pc_4.total_chairs)
      # expect(page).to have_content(@pc_5.total_chairs)
    end
  end
end
