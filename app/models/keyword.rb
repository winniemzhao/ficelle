class Keyword < ApplicationRecord
  has_many :preferences
  has_many :inspo_keywords

  validates :name, presence: true
  validates :name, uniqueness: true

  has_one_attached :photo
end
