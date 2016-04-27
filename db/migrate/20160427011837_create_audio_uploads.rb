class CreateAudioUploads < ActiveRecord::Migration
  def change
    create_table :audio_uploads do |t|
      t.string :artist_name
      t.string :track_name

      t.timestamps null: false
    end
  end
end
