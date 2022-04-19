class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, numericality: true, inclusion: (0..5)
  validates :content, presence: true
end
