require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Grumpy Bear'
    fill_in 'Cost', :with => '12'
    fill_in 'Country', :with => 'MX'
    fill_in 'Interests', :with => 'Coffee Dates while discussing politics'
    click_on 'Create Product'
    expect(page).to have_content 'Products'
  end

  it "gives error when no name, cost, country, interest is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
