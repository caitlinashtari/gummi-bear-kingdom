require 'rails_helper'

describe "the delete a product process" do
  it "deletes a product" do
    product = Product.create(:name => 'Happy Bear', :cost => 13, :country => "FR", :interests => "Sky diving")
    visit product_path(product)
    click_on 'Delete'
    expect(page).to have_no_content 'Sad Bear'
  end
end
