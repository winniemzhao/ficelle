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
    @message = [
      "I'm super excited, hope you are too!",
      "Looking forward to it!",
      "Don't be late!",
      "Mark your calendar",
      "You're probably thinking: \"You don't plan anything\"... well I'm a changed person",
      "Can't wait to spend some quality time together 🥰"
    ].sample
  end
end
