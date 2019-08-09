class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user
    @grandmas = @user.grandmas
    @bookings = @user.bookings
    @upcoming_bookings = @bookings.select { |x| booking_status(x) == "upcoming" }
    @current_bookings = @bookings.select { |x| booking_status(x) == "ongoing" }
    @passed_bookings = @bookings.select { |x| booking_status(x) == "passed" }
  end
end
