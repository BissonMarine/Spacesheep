class Owner::BookingsController < ApplicationController
  def accept
    # cibler le booking à valider
    # vérifier son status
    # l'addEventListener click va renvoyer le bon objet booking à cibler et déclencher accept si le click est sur le bouton accepter
    @booking = Booking.find(params[:id])
    @booking.validated = "confirmed" if @booking.validated == "pending"
    @booking.save
    redirect_to bookings_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.validated = "declined" if @booking.validated == "pending"
    @booking.save
    redirect_to bookings_path
  end

end
