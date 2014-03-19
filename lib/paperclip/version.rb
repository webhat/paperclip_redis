# in lib/paperclip/version.rb
class Paperclip
  module Version
    MAJOR = 0
    MINOR = 0
    PATCH = 8
    BUILD = 'pre'

    STRING = [MAJOR, MINOR, PATCH, BUILD].compact.join('.')
  end
end

