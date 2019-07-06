class Locale < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :blurb, presence: true
  validates :citation, presence: true
  validates :degree, presence: true
end
