class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :spaceship

  validates :booking_start_date, presence: true
  validates :booking_end_date, presence: true
  validates :total_price, presence: true
  validates :validated, inclusion: { in: ['pending', 'declined', 'confirmed'] }
end
