class Locale < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :blurb, presence: true
end
