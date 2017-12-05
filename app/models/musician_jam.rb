class MusicianJam < ApplicationRecord
  belongs_to :jam_session
  belongs_to :musician, class_name: "User"
end
