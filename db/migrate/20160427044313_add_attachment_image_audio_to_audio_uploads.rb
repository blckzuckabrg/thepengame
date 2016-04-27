class AddAttachmentImageAudioToAudioUploads < ActiveRecord::Migration
  def self.up
    change_table :audio_uploads do |t|
      t.attachment :image
      t.attachment :audio
    end
  end

  def self.down
    remove_attachment :audio_uploads, :image
    remove_attachment :audio_uploads, :audio
  end
end
