class AddAttachmentAvatarToTestPaperclips < ActiveRecord::Migration
  def self.up
    change_table :test_paperclips do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :test_paperclips, :avatar
  end
end
