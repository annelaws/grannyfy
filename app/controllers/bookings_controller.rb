class BookingsController < ApplicationController
  def show
    # binding.pry
    # params is a hash
    @booking = Booking.find(params[:id])
    authorize @booking
    booking_status(@booking)
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
    @grandma = Grandma.find(params[:grandma_id])
    @booking.grandma = @grandma
    @booking.user = current_user
    if @booking.save
      redirect_to booking_show_path(@booking)
    else
      render "grandmas/show"
    end
  end

  def booking_params
    params.require(:booking).permit(:grandma, :user, :start_date, :end_date)
  end

  def booking_status(current_booking)
    start_d = current_booking.start_date
    end_d = current_booking.end_date
    today = Date.today

    if start_d > today
      return @status = "upcoming"
    elsif end_d < today
      return @status = "passed"
    else
      return @status = "ongoing"
    end
  end
end
