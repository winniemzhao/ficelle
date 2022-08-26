class Keyword < ApplicationRecord
  has_many :preferences
  has_many :inspo_keywords
  has_many :partners, through: :preferences

  validates :name, presence: true
  validates :name, uniqueness: true

  has_one_attached :photo
end
