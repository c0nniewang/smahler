class User < ApplicationRecord
  has_many :jam_sessions
  has_many :musician_instruments
  has_many :instruments, through: :musician_instruments

end
