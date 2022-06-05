class Product < ApplicationRecord
  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}

    has_many :reviews, dependent: :destroy

    validates :name, presence: true

    validates_length_of :name, maximum: 100

    before_save(:titleize_product)

  private
    def titleize_product
      self.name = self.name.titleize
    end
end