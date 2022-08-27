class Partner < ApplicationRecord
  belongs_to :user
  has_many :events, dependent: :destroy
  has_many :preferences, dependent: :destroy
  has_many :keywords, through: :preferences

  validates :name, presence: true
  validates :name, uniqueness: true

  has_one_attached :photo
end
