class Bot < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :rating, inclusion: { in: [1..5], allow_nil: false }
  validates :descritpion, presence: true
  validates :price, prensence: true


end
