class AvailabilitiesController < ApplicationController
  before_action :authenticate_doctor!

  def new
    @availability = current_doctor.availabilities.new
  end

  def create
    @availability = current_doctor.availabilities.new(availabilities_params)
    if @availability.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def availabilities_params
    params.require(:availability).permit(:start_date, :end_date)
  end
end
