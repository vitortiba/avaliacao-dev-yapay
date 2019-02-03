class AppointmentsController < ApplicationController
  before_action :find_service, only: [:new, :create]

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = @service.appointments.new(appointment_params)

    if @appointment.save
      AppointmentMailer.with(appointment: @appointment, service: @service).confirm_email.deliver_now
      redirect_to services_path
    else
      render 'new'
    end
  end

  private
  def appointment_params
    params.require(:appointment).permit(:name, :email, :date)
  end

  def find_service
    @service = Service.find(params[:service_id])
  end

end
