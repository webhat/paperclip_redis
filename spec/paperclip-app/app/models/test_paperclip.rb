class TestPaperclip < ActiveRecord::Base
	has_attached_file :avatar, :styles => {:medium => "265x265>", :thumb => "100x100>"},
		:default_url => "/assets/:style/missing.png",
		:path => "courses/:attachment/:id_partition/:style/:filename",
		:url => "/dynamic/courses/avatars/:id_partition/:style/:basename.:extension",
		:storage => :redis

	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
