class GrandmasController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @grandmas = policy_scope(Grandma)
    if params[:query].present?
      @grandmas = Grandma.search_by_first_name_and_last_name(params[:query])
    end
  end

  def show
    @grandma = Grandma.find(params[:id])
    @marker = [{
        lat: @grandma.latitude,
        lng: @grandma.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { grandma: @grandma })
      }]
    authorize @grandma
    @booking = Booking.new
  end

  def new
    @grandma = Grandma.new
    authorize @grandma
  end

  def create
    @grandma = Grandma.new(grandma_params)
    authorize @grandma
    @grandma.user = current_user
    if @grandma.save
      ids = params[:grandma][:skill_ids][1..-1].map(&:to_i)
      @grandma.set_grandma_skills(ids, @grandma)
      redirect_to grandmas_path
    else
      render "new"
    end
  end

  def edit
    @grandma = Grandma.find(params[:id])
    authorize @grandma
  end

  def update
    @grandma = Grandma.find(params[:id])
    authorize @grandma
    if @grandma.update(grandma_params)
      redirect_to grandma_path(@grandma)
    else
      render :edit
    end
  end

  def destroy
    @grandma = Grandma.find(params[:id])
    authorize @grandma
    @grandma.delete
    redirect_to grandmas_path
  end

  def grandma_params
    params.require(:grandma).permit(:first_name, :last_name, :age, :location, :avatar)
  end
end
