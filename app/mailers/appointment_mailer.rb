class AppointmentMailer < ApplicationMailer
  def confirm_email
    @service = params[:service]
    @appointment = params[:appointment]
    @url  = "http://127.0.0.1:3000/services/#{@service.id}/appointments/#{@appointment.id}"
    mail(to: @appointment.email,
         subject: 'Seu agendamento foi feito') do |format|
      format.html { render 'confirm_email' }
    end
  end
end