require 'rails_helper'

describe Restaurant, type: :model do
  describe "Validations" do
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:address)}
    it { should validate_presence_of(:post_code)}
    it { should validate_numericality_of(:number_of_chairs)}
    it { should validate_presence_of(:category)}
  end
end
