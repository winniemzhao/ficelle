class Inspo < ApplicationRecord
  has_many :events

  validates :name, presence: true
  validates :genre, presence: true
  validates :genre, inclusion: { in: %w(date gift text), message: "%{value} must be one and only one of 'date', 'gift', and 'text'" }

  acts_as_favoritable

  has_one_attached :photo
end
