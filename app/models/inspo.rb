class Inspo < ApplicationRecord
  has_many :events

  validates :name, presence: true
  validates :genre, presence: true

  acts_as_favoritable
end
