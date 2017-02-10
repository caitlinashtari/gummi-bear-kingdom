require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country }
  it { should validate_presence_of :interests }
  it { should validate_presence_of :image }

  describe('Product#capitalize') do
    it("capitalizes name, country, interest inputs") do
      product = Product.create(:name => 'happy bear', :cost => 13, :country => "fr", :interests => "sky diving", :image => "image")
      product.capitalize()
      expect(product.name).to(eq("Happy Bear"))
    end
  end
end
