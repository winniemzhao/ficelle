class Event < ApplicationRecord
  belongs_to :partner
  belongs_to :inspo

  enum status: { pending: 0, confirmed: 1, completed: 2 }

  def self.load(user)
    Favorite.for_favoritor(user).each do |favorite|
      inspo = Inspo.find(favorite.favoritable_id)
      if inspo.genre = 'text'
        date = Time.new(Date.today.year, Date.today.month, Date.today.day, rand(8..20), [15, 30, 45, 0].sample)
      elsif inspo.genre = 'gift'
        date = Time.new(Date.today.year, Date.today.month, Date.today.day, rand(8..20))
      else
        date = Time.new(Date.today.year, Date.today.month, Date.today.day, rand(17..19))
      end
      event = Event.new(date: date + 86400 * rand(1..14))
      event.partner = user.partner
      event.inspo = inspo
      event.save!
    end
  end
end
