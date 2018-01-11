require 'pathspec/spec'

class PathSpec
  class RegexSpec < Spec
    def initialize(regex)
      @regex = Regexp.compile regex

      super
    end

    def inclusive?
      true
    end

    def match(path)
      @regex.match(path) if @regex
    end
  end
end
