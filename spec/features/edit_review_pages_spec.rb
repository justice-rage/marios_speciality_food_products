require 'rails_helper'

describe "edit review" do
  before(:each) do
    visit new_user_registration_path
    click_on "Sign up!"
    fill_in "user_email", :with => "admin@epicodus.com"
    fill_in "user_password", :with => "epicodus123"
    fill_in "user_password_confirmation", :with => "epicodus123"
    click_on "Sign up"
    dumby_admin = User.where(:email => "admin@epicodus.com").update(:admin => true)
  end

  it "edits reviews" do
    product = Product.create(:name => 'Crab Cake', :cost => '2', :country_of_origin => 'Italy')
    review = Review.create(:author => 'Mojo Jojo', :content_body => 'Who came up with the idea of crab cakes? It cannot be very popular or else birthdays would very different.', :rating => '2', :product_id => product.id)
    visit edit_product_review_path(product, review)
    fill_in 'Author', :with => 'Mojo Jojo'
    click_on 'Update Review'
    expect(page).to have_content 'Mojo Jojo'
  end

  it "returns error when author left blank" do
    product = Product.create(:name => 'Crab Cake', :cost => '2', :country_of_origin => 'Italy')
    review = Review.create(:author => 'Mojo Jojo', :content_body => 'Who came up with the idea of crab cakes? It cannot be very popular or else birthdays would very different.', :rating => '2', :product_id => product.id)
    visit edit_product_review_path(product, review)
    fill_in 'Author', :with => ''
    click_button 'Update Review'
    expect(page).to have_content 'errors'
  end

  it "deletes reviews" do
    product = Product.create(:name => 'Crab Cake', :cost => '2', :country_of_origin => 'Italy')
    review = Review.create(:author => 'Mojo Jojo', :content_body => 'Who came up with the idea of crab cakes? It cannot be very popular or else birthdays would very different.', :rating => '2', :product_id => product.id)
    visit product_review_path(product, review)
    click_on 'Delete'
    expect(page).not_to have_content 'Who came up with the idea of crab cakes? It cannot be very popular or else birthdays would very different.'
  end
end