require 'spec_helper'

describe TestPaperclip do
	before(:each) do
		@model = TestPaperclip.new
	end

	describe 'creates a new attachment' do
		[nil, 'http://localhost:6379/'].each do |url|
			it "should add a file with: '#{url}'" do
				ENV['PAPERCLIP_REDIS'] = url

				@model.avatar = File.open('spec/file.png')
				@model.save
			end
			it "should copy a file with: '#{url}'" do
				ENV['PAPERCLIP_REDIS'] = url

				@new_model = TestPaperclip.new
				@model.avatar = File.open('spec/file.png')
				@new_model.avatar = @model.avatar
				@new_model.save
			end
		end
	end
end
