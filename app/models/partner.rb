class Partner < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :preferences
  has_many :keywords, through: :preferences

  validates :name, presence: true
  validates :name, uniqueness: true

  acts_as_favoritor

  has_one_attached :photo
end
