class RealtiesController < ApplicationController

  load_and_authorize_resource

  def index
    @realtys = Realty.all
  end

  def new
    @realty = Realty.new
  end

  def create
    @realty = Realty.new(realty_params)
    @realty.save
    redirect_to realties_path
  end

  def show
  end

  def edit
  end

  def update
    @realty.update(realty_params)
    redirect_to realties_path
  end

  def destroy
    @realty.destroy
    redirect_to realties_path
  end

  private

  def realty_params
    params.require(:realty).permit(:street, :number_unit, :commune_id, :property_type, :population_villa, :unit_estate, :apple, :property, :latitude, :longitude )
  end


end
