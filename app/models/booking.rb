class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bot

  validates :start, presence: true
  validates :end, presence: true
  validates :status, inclusion: { in: %w[pending approved rejected] }, presence: true
end
