class SpaceshipsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def show
    @spaceship = Spaceship.find(params[:id])
    @booking = Booking.new
  end
  
  def index
    @spaceships = Spaceship.all
  end
end
