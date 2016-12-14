class Product < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 20 }
  validates :image_url, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for a gif, jpg or png image.'
  }
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
end
