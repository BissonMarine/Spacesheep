class SpaceshipsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @spaceship = Spaceship.find(params[:id])
  end
end
