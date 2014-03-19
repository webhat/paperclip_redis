# in lib/paperclip/version.rb
class Paperclip
  module Version
    MAJOR = 0
    MINOR = 0
    PATCH = 7
    BUILD = 'pre3'

    STRING = [MAJOR, MINOR, PATCH, BUILD].compact.join('.')
  end
end

