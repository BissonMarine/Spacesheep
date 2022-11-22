class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings_as_a_renter, dependent: :destroy, class_name: 'Booking'
  has_many :bookings_as_a_owner, through: :spaceship, class_name: 'Booking', source: :bookings
  has_many :spaceships, dependent: :destroy

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :name, presence: true

  has_one_attached :photo
end
