class Preference < ApplicationRecord
  belongs_to :partner
  belongs_to :keyword
end
