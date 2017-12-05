class MusicianJam < ApplicationRecord
  belongs_to :jamsession
  belongs_to :musican, class_name: "User"
end
