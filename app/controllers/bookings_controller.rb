class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @spaceship = Spaceship.find(params[:id])
    @booking = Booking.new
  end

  def create
    @spaceship = Spaceship.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.spaceship = @spaceship

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
