class User < ApplicationRecord
  has_many :jam_sessions
  has_many :musician_instruments, foreign_key: "musician_id"
  has_many :instruments, through: :musician_instruments

end
