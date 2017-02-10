require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    product = Product.create(:name => 'Happy Bear', :cost => 13, :country => "FR", :interests => "Sky diving", :image => "image")
    visit product_path(product)
    click_on 'Edit'
    fill_in 'Name', :with => 'Sad Bear'
    click_on 'Update Product'
    expect(page).to have_content 'Sad Bear'
  end

  it "gives error when no name is entered" do
    product = Product.create(:name => 'Happy Bear', :cost => 13, :country => "FR", :interests => "Sky diving", :image => "image")
    visit product_path(product)
    click_on 'Edit'
    fill_in 'Name', :with => ''
    click_button 'Update Product'
    expect(page).to have_content 'errors'
  end
end
