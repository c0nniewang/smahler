class CreateJamSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :jam_sessions do |t|
      t.string :title
      t.datetime :datetime
      t.string :description
      t.integer :city_id
      t.integer :genre_id
      t.integer :host_id

      t.timestamps
    end
  end
end
