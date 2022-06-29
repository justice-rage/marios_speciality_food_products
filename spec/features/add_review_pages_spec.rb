require 'rails_helper'

describe "add a review process" do
  before(:each) do
    visit new_user_registration_path
    click_on "Sign up!"
    fill_in "user_email", :with => "admin@epicodus.com"
    fill_in "user_password", :with => "epicodus123"
    fill_in "user_password_confirmation", :with => "epicodus123"
    click_on "Sign up"
    dumby_admin = User.where(:email => "admin@epicodus.com").update(:admin => true)
  end
  
    it "adds a review" do
      product = Product.create(:name => 'King Crab', :cost => '3', :country_of_origin => 'China')
      visit product_path(product)
      click_link 'Add a review'
      fill_in 'Author', :with => "Spyro"
      fill_in 'Content body', :with => "Does this crab make me look crabby, or is it making me crabby?"
      choose('𝟰')
      click_on 'Create Review'
      expect(page).to have_content 'King Crab'
    end
  
    it "returns an error if form left blank" do
      product = Product.create(:name => 'King Crab', :cost => '3', :country_of_origin => 'China')
      visit new_product_review_path(product)
      click_on 'Create Review'
      expect(page).to have_content 'Error detected - review not created. Please try again.'
    end
  end