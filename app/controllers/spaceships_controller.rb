class SpaceshipsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @spaceships = Spaceship.all
  end
end
