class CreateMusicianInstruments < ActiveRecord::Migration[5.1]
  def change
    create_table :musician_instruments do |t|
      t.integer :musician_id
      t.integer :instrument_id

      t.timestamps
    end
  end
end
