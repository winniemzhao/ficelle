class EventMailer < ApplicationMailer
  default from: 'hello@ficelle.ca'

  def invite_email
    @user = params[:user]
    @event = params[:event]

    begin
      mail(
        from: @user.email,
        to: email_address_with_name(@user.partner.email, @user.partner.name),
        subject: 'Date Invitation: Details inside 😊'
      )
    rescue Net::SMTPUnknownError => e
      Rails.logger.warn("Unable to send email to unverified mailgun email error=#{e}")
    end
  end
end
