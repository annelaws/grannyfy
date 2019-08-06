class GrandmasController < ApplicationController
  def index
    @grandmas = policy_scope(Grandma)
  end

  def show
    @grandma = Grandma.find(params[:id])
    authorize @grandma
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
