class AddNameToAudioUploads < ActiveRecord::Migration
  def change
    add_column :audio_uploads, :name, :string
  end
end
