class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:id])
    @status = booking_status(@booking)
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:id])
    @status = booking_status(@booking)
    @review = Review.new(review_params)
    @review.booking = @booking
    # raise

    authorize @review
    if @review.save
      redirect_to booking_show_path(@booking)
    else
      render "bookings/show"
    end
  end

  def review_params
    params.require(:review).permit(:content, :score)
  end
end
