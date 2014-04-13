require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "PaperclipRedis" do
	class DummyClass
		def initialize
			@options = {}
		end
	end

	before(:each) do
		  @redis_dummy = DummyClass.new
	end
	it 'should run without a redis url' do
		@redis_dummy.extend(Paperclip::Storage::Redis)
		@redis_dummy.ping.should eq 'PONG'
	end
	it 'should run with a redis url' do
		ENV['PAPERCLIP_REDIS'] = 'http://localhost:6379/'
		@redis_dummy.extend(Paperclip::Storage::Redis)
		@redis_dummy.ping.should eq 'PONG'
	end
	it 'should not run with a bad redis url' do
		ENV['PAPERCLIP_REDIS'] = 'http://localhost:8000/'
		@redis_dummy.extend(Paperclip::Storage::Redis)
		expect {
			@redis_dummy.ping
		}.to raise_error
	end
end
