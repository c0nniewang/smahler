class JamSession < ApplicationRecord
  belongs_to :host, class_name: "User"
  belongs_to :city
  belongs_to :genre
  has_many :musician_jams
  has_many :musicians, through: :musician_jams


end
