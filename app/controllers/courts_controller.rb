class CourtsController < ApplicationController

  load_and_authorize_resource

  def index
    @courts = Court.all
  end

  def new
    @court = Court.new
  end

  def create
    @court = Court.new(court_params)
    @court.save
    redirect_to courts_path
  end

  def show
  end

  def edit
  end

  def update
    @court.update(court_params)
    redirect_to courts_path
  end

  def destroy
    @court.destroy
    redirect_to courts_path
  end

  private

  def court_params
    params.require(:court).permit(:name, :rut, :address, :phone, :account)
  end

end
