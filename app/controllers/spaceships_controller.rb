class SpaceshipsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @spaceship = Spaceship.find(params[:id])
    @spaceship.name
    @spaceship.price
    @spaceship.description
    @spaceship.weapons
    @spaceship.energy
    @spaceship.seats
    @spaceship.address
    @spaceship.gravity
  end
end
