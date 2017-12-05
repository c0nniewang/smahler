class MusicianInstrument < ApplicationRecord
  belongs_to :musician, class_name: "User"
  belongs_to :instrument
end
