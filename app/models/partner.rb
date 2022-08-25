class Partner < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :preferences

  validates :name, presence: true
  validates :name, uniqueness: true

  has_one_attached :photo
end
