module Admin
  class AppointmentsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_appointment, only: [:show, :destroy]

    def index
      @appointments = Appointment.all
    end

    def show
    end

    def destroy
      @appointment.destroy

      redirect_to admin_appointments_path
    end

    private

    def find_appointment
      @appointment = Appointment.find(params[:id])
    end
  end
end