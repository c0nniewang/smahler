class User < ApplicationRecord
  has_secure_password

  has_many :jam_sessions, :foreign_key => 'host_id'
  has_many :musician_instruments, :foreign_key => 'musician_id'
  has_many :instruments, through: :musician_instruments


end
