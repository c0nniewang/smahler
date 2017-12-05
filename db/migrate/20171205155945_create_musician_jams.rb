class CreateMusicianJams < ActiveRecord::Migration[5.1]
  def change
    create_table :musician_jams do |t|
      t.integer :musician_id
      t.integer :jam_session_id

      t.timestamps
    end
  end
end
