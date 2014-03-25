module Paperclip
	module Storage
		module Redis
			def self.extended(base)
				begin
					require 'redis'
				rescue LoadError => e
					e.message << " (You may need to install the redis gem)"
					raise e
				end unless defined?(Redis)

				base.instance_eval do
					@options[:path] ||= ":class/:attachment/:id_partition/:style/:filename"
					@options[:url] ||= "/dynamic/:class/:attachment/:id_partition/:style/:filename"
					@redis = ::Redis.new
				end
			end

			def exists?(style = default_style)
				@redis.exists(path(style))
			end

			def flush_writes
				@queued_for_write.each do |style, file|
					log("saving #{path(style)}")
					file.rewind
					@redis.set(path(style), file.read)
				end
			end

			def flush_deletes
				@queued_for_delete.each do |path|
					log("deleting #{path}")
					@redis.del(path)
				end
			end

			def copy_to_local_file(style, destination_path)
				File.open(destination_path, "w") do |f|
					f << read
				end
			end

			def read(style = default_style)
				@redis.get(path(style))
			end

			class App
				def call(env)
					content = ::Redis.new.get(env["PATH_INFO"].gsub(/^\//, ""))
					extname = File.extname(env["PATH_INFO"])[1..-1]
					content_type = Mime::Type.lookup_by_extension(extname)
					[200, {"Content-Type" => content_type.to_s, "Content-Length" => content.bytesize.to_s}, [content]]
				rescue
					raise $!
					[404, {}, []]
				end
			end
		end
	end
end
