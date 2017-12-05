class User < ApplicationRecord
  has_many :jamsessions
  has_many :musicianinstruments
  has_many :instruments, through: :musicianinstruments

end
