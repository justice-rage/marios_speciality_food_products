require 'rails_helper'

describe "edit product lifecycle" do
  it "edits a product" do
    product = Product.create(:name => 'Salmon', :cost => '12', :country_of_origin => "Canada")
    visit edit_product_path(product)
    fill_in 'Name', :with => 'Flounder'
    click_on 'Update Product'
    expect(page).to have_content 'Flounder'
  end

  it "returns error if description left blank" do
    product = Product.create(:name => 'Salmon', :cost => '12', :country_of_origin => 'Canada')
    visit edit_product_path(product)
    fill_in 'Name', :with => ''
    click_button 'Update Product'
    expect(page).to have_content 'Error detected - product not updated. Please try again.'
  end

  it "deletes a product" do
    product = Product.create(:name => 'Salmon', :cost => '12', :country_of_origin => 'Canada')
    visit product_path(product)
    click_on 'Delete'
    expect(page).not_to have_content 'Salmon'
  end
end