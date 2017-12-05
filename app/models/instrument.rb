class Instrument < ApplicationRecord
  has_many :musician_instruments
  has_many :musicians, through: :musician_instruments
end
