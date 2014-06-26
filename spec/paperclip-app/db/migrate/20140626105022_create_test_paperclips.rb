class CreateTestPaperclips < ActiveRecord::Migration
  def change
    create_table :test_paperclips do |t|

      t.timestamps
    end
  end
end
