class Locale < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
