class CreateInstrumentJams < ActiveRecord::Migration[5.1]
  def change
    create_table :instrument_jams do |t|
      t.integer :instrument_id
      t.integer :jam_session_id
      t.timestamps
    end
  end
end
