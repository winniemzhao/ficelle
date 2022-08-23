class Keyword < ApplicationRecord
  has_many :preferences
  has_many :inspo_keywords

  validates :name, presence: true
  validates :name, uniqueness: true
end
