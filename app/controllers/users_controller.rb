class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user
    @grandmas = @user.grandmas
    @bookings = @user.bookings
  end
end
