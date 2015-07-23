class BicyclesController < ApplicationController
  def index
    @bicycles = Bicycle.all
  end

  def new
    @bicycle = Bicycle.new
  end

  def create
    @bicycle = Bicycle.new(bicycle_params)
  end

  def show
    @bicycle = bicycle.find(params[:id])
  end

  def edit
    @bicycle = Bicycle.find(params[:id])
  end

  def update
    @bicycle = Bicycle.find(params[:id])
    if @bicycle.update_attributes(bicycle_params)
        redirect_to bicycles_path
      else
        render 'edit'
      end
  end

  def destroy
    @bicycle = Bicycle.find(params:[id]).destroy
    redirect_to root_path
  end

  private

  def bicycle_params
      params.require(:bicycle).params(:brand, :model, :year, :price, :size, :color, :components)
  end

end
