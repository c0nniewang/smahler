class InstrumentJam < ApplicationRecord
  belongs_to :instrument
  belongs_to :jam_session
end
