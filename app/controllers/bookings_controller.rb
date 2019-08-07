class BookingsController < ApplicationController
  def show
    # binding.pry
    # params is a hash
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @user = current_user
    @grandma = Grandma.find(params[:grandma_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.grandma = Grandma.find(params[:grandma_id])
    @booking.user = current_user
    @booking.save
    redirect_to booking_show_path(@booking)
  end

  def booking_params
    params.require(:booking).permit(:grandma, :user, :start_date, :end_date)
  end
end
