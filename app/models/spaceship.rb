class Spaceship < ApplicationRecord
  belongs_to :user
  has_many :booking, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :seats, presence: true
  validates :address, presence: true
end
