class AudioUpload < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	has_attached_file :audio 
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :audio, :content_type => [ 'audio/MP3', 'audio/Wav', 'audio/Ogg']
end
