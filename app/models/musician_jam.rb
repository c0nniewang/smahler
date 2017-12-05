class MusicianJam < ApplicationRecord
  belongs_to :jam_session
  belongs_to :musican, class_name: "User"
end
