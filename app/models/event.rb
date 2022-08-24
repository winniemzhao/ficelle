class Event < ApplicationRecord
  belongs_to :partner
  belongs_to :inspo

  enum status: { pending: 0, confirmed: 1, completed: 2 }
end
