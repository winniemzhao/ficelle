class Event < ApplicationRecord
  belongs_to :partner
  belongs_to :inspo

  enum status: { pending: 0, confirmed: 1, completed: 2 }

  validates :date, presence: true

  def self.load(user)
    Event.destroy_all
    year, month, day = Date.today.year, Date.today.month, Date.today.day
    Favorite.for_favoritor(user).sample(user.event_frequency).each do |favorite|
      inspo = Inspo.find(favorite.favoritable_id)
      unless user.blocked_by?(inspo)
        if Event.where(inspo_id: inspo.id).empty?
          if inspo.genre == 'text'
            date = Time.new(year, month, day, rand(8..20), [15, 30, 45, 0].sample) + (86400 * rand(1..5))
          elsif inspo.genre == 'gift'
            date = Time.new(year, month, day, rand(8..20)) + (86400 * rand(1..7))
          else
            date = Time.new(year, month, day, rand(17..19)) + (86400 * rand(1..14))
          end
          media = inspo.genre == 'text' ? inspo.media : nil
          content = inspo.genre == 'text' ? inspo.content : nil
          event = Event.new(date: date, content: content)
          event.partner = user.partner
          event.inspo = inspo
          event.save!
        end
      end
    end
    %w[text gift date].each do |genre|
      if Event.where.not(status: :completed).select { |event| event.inspo.genre == genre }.count.zero?
        event = Event.new
        event.date = Time.new(year, month, day, 19, [0, 30].sample) + (86400 * rand(1..5))
        event.inspo = Inspo.where(genre: genre).sample
        event.content = event.inspo.content if genre == 'text'
        event.partner = user.partner
        event.save!
      end
    end
    deficit = user.event_frequency - Event.where.not(status: :completed).where(partner_id: user.partner).count
    if deficit.positive?
      deficit.times do
        event = Event.new
        event.inspo = user.all_favorited.empty? ? Inspo.all.sample : user.all_favorited.sample
        event.partner = user.partner
        event.date = Time.new(Date.today.year, Date.today.month, Date.today.day, 19, [0, 30].sample) + (86400 * rand(1..5))
        event.save!
      end
    end
  end

  def send_message(attributes = {})
    require 'twilio-ruby'
    account_sid = ENV["TWILIO_ACCOUNT_SID"]
    auth_token = ENV["TWILIO_AUTH_TOKEN"]
    twilio_number = ENV["TWILIO_PHONE_NUMBER"]
    client = Twilio::REST::Client.new(account_sid, auth_token)
    content = attributes[:content]
    from = twilio_number
    to = '+14372270294' #hard-coded
    client.messages.create(from: from, to: to, body: content)
  end
end
