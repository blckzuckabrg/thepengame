class AddUserIdToAudioUploads < ActiveRecord::Migration
  def change
    add_column :audio_uploads, :user_id, :integer
    add_index :audio_uploads, :user_id
  end
end
