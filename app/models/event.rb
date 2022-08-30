class Event < ApplicationRecord
  belongs_to :partner
  belongs_to :inspo

  enum status: { pending: 0, confirmed: 1, completed: 2 }

  def self.load(user)
    Favorite.for_favoritor(user).each do |favorite|
      inspo = Inspo.find(favorite.favoritable_id)
      if Event.where(inspo_id: inspo.id).empty?
        if inspo.genre = 'text'
          date = Time.new(Date.today.year, Date.today.month, Date.today.day, rand(8..20), [15, 30, 45, 0].sample)
        elsif inspo.genre = 'gift'
          date = Time.new(Date.today.year, Date.today.month, Date.today.day, rand(8..20))
        else
          date = Time.new(Date.today.year, Date.today.month, Date.today.day, rand(17..19))
        end
        content = inspo.content if inspo.genre == 'text'
        event = Event.new(date: date + 86400 * rand(1..14))
        event.partner = user.partner
        event.inspo = inspo
        event.save!
      end
    end
  end

  def send_message
    require 'twilio-ruby'
    account_sid = 'ACbf7f4e607a174f62aebf4c5a3a6fab20'
    auth_token = 'yyyyyyyyyyyyyyyyyyyyyyyyy'
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = '+15551234567' # Your Twilio number
    to = '+15555555555' # Your mobile phone number

    client.messages.create(from: from, to: to, body: "Hey friend!")
  end
end
