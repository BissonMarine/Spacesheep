class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @user_bookings = Booking.where(user: current_user)
    # identifier le user actuel
    # regarder si il y a des bookings liés à son spaceship
    # les afficher

    # @user = User.find(params(User.name == "jean"))
    # @user_spaceships = Spaceship.where(user: User.find(19)) #retourne un array contenant les obj spships associés au user

    @owner_bookings = Booking.includes(:spaceship).where(spaceship: { user: current_user })
  end
end
