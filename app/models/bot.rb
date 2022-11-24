class Bot < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  # validates :rating, inclusion: { in: (1..5) }, allow_nil: false
  validates :description, presence: true
  validates :price, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
