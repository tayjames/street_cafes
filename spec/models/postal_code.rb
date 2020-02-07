require 'rails_helper'

describe PostalCode, type: :model do
  describe "Validations" do
    it { should validate_presence_of(:post_code)}
  end

  describe "Relationships" do
    it { should have_many(:restaurants)}
  end
end
