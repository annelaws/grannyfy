class GrandmasController < ApplicationController
  def index
    @grandmas = Grandma.all
  end

  def show
    @grandma = Grandma.find(params[:id])
  end

  def new
    @grandma = Grandma.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
