class CreatePlaysongs < ActiveRecord::Migration[5.2]
  def change
    create_table :playsongs do |t|
      t.integer :playlist_id
      t.integer :song_id
      t.belongs_to :playlist, foreign_key: true
      t.belongs_to :song, foreign_key: true

      t.timestamps
    end
  end
end
