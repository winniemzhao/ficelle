class EventMailer < ApplicationMailer
  default from: 'hello@ficelle.ca'

  def invite_email
    @user = params[:user]
    @event = params[:event]
    mail(
      from: @user.email,
      to: email_address_with_name(@user.partner.email, @user.partner.name),
      subject: 'Date Invitation: Details inside 😊'
    )
  end
end
