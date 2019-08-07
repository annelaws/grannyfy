class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user
    @grandmas = @user.grandmas
  end
end
