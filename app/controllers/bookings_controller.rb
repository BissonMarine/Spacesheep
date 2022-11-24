class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @user_bookings = Booking.where(user: current_user)   
    @owner_bookings = Booking.includes(:spaceship).where(spaceship: { user: current_user })
  end
  
  def new
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.new
  end

  def create
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.spaceship = @spaceship
    @booking.total_price = (@booking.booking_end_date - @booking.booking_start_date) * @spaceship.price
    @booking.validated = "pending"

    if @booking.save
      redirect_to bookings_path(@bookings)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_start_date, :booking_end_date)
  end
end
