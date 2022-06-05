require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_length_of(:name).is_at_most(100) }
  it { should validate_length_of(:name).is_at_least(3) }
  it { should validate_presence_of :cost }
  it { should validate_numericality_of(:cost).is_greater_than(0) }
  it { should validate_numericality_of(:cost).is_less_than_or_equal_to(1000000) }

  it("titleizes the name of an product") do
    product = Product.create({name: "kale", cost: 5, country_of_origin: "usa"})
    expect(product.name()).to(eq("Kale"))
  end
end