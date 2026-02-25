class Restaurant < ApplicationRecord
  categories = [ "chinese", "italian", "japanese", "french", "belgian" ]

  has_many :reviews, dependent: :destroy

  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: categories }
  validates :name, presence: true
end
