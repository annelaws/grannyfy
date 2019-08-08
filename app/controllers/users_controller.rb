class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user
    @grandmas = @user.grandmas
    @bookings = @user.bookings
    @upcoming_bookings = @bookings.select { |x| }
  end
end
