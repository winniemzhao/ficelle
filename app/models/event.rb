class Event < ApplicationRecord
  belongs_to :partner
  belongs_to :inspo

  enum status: { pending: 0, confirmed: 1, completed: 2 }

  validates :date, presence: true

  def self.load(user)
    Favorite.for_favoritor(user).sample(user.event_frequency).each do |favorite|
      inspo = Inspo.find(favorite.favoritable_id)
      if Event.where(inspo_id: inspo.id).empty?
        event = Event.new
        year, month, day = Date.today.year, Date.today.month, Date.today.day
        if inspo.genre = 'text'
          date = Time.new(year, month, day, rand(8..20), [15, 30, 45, 0].sample) + (86400 * rand(1..5))
        elsif inspo.genre = 'gift'
          date = Time.new(year, month, day, rand(8..20)) + (86400 * rand(1..7))
        else
          date = Time.new(year, month, day, rand(17..19)) + (86400 * rand(1..14))
        end
        content = inspo.genre == 'text' ? inspo.content : nil
        event = Event.new(date: date, content: content)
        event.partner = user.partner
        event.inspo = inspo
        event.save!
      end
    end
  end

  def send_message(content)
    require 'twilio-ruby'
    account_sid = ENV["TWILIO_ACCOUNT_SID"]
    auth_token = ENV["TWILIO_AUTH_TOKEN"]
    twilio_number = ENV["TWILIO_PHONE_NUMBER"]
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = twilio_number
    to = '+15144589946'
    sleep(3)
    client.messages.create(from: from, to: to, body: content)
  end
end
