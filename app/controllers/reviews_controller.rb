class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:id])
    @review = Review.new(review_params)
    @review.booking = @review
    @review.save
  end

  def review_params
    params.require(:review).permit(:content, :score)
  end
end
