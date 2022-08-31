class Partner < ApplicationRecord
  belongs_to :user
  has_many :events, dependent: :destroy
  has_many :preferences, dependent: :destroy
  has_many :keywords, through: :preferences
  has_many :inspo_keywords, through: :keywords
  has_many :inspos, through: :inspo_keywords

  validates :name, presence: true

  has_one_attached :photo
end
