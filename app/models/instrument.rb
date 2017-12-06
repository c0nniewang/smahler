class Instrument < ApplicationRecord
  has_many :musician_instruments
  has_many :musicians, through: :musician_instruments
  has_many :instrument_jams
  has_many :jam_sessions, through: :instrument_jams
end
