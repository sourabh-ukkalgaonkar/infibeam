class AppointmentsController < ApplicationController
  before_action :authenticate_doctor!
  before_filter :find_appoitment

  def accept
    if @appointment.update(status: 'Accepted')
      redirect_to root_path
    else
      redirect_to root_path, error: 'Something went wrong'
    end
  end

  def reject
    if @appointment.update(status: 'Rejected')
      redirect_to root_path
    else
      redirect_to root_path, error: 'Something went wrong'
    end
  end

  private

  def find_appoitment
    @appointment = Appointment.find_by_id(params[:id])
    redirect_to root_path if @appointment.blank?
  end
end
