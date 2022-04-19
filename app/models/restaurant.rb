class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: ["chinese", "italian", "japanese", "french", "belgian"]

  # validates :size, inclusion: { in: %w(small medium large),
  #  message: "%{value} is not a valid size" }

  # validates :category, if: :real_category?
  # def real_category?
  #  :category == "chinese"
  # end

end
