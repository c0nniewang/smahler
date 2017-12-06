class User < ApplicationRecord
  has_secure_password

  has_many :jam_sessions, :foreign_key => 'host_id'
  has_many :musician_instruments, :foreign_key => 'musician_id'
  has_many :instruments, through: :musician_instruments

  validates :username, :password, :name, :email, presence: true
  validates :username, uniqueness: true


  def is_hosting_jam_session
    JamSession.where(host_id: self.id)
  end

  def is_playing_jam_session
    MusicianJam.where(musician_id: self.id)
  end

end
