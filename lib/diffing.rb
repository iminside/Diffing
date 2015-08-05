require_relative 'diffing/diff'
require_relative 'diffing/part'
require_relative 'diffing/formats/ascii'
require_relative 'diffing/formats/html'


module Diffing

  class << self


    def by_chars( from, to )
      Diff.new from, to
    end

    def by_words( from, to )
      Diff.new from, to, /\S+|\s+/
    end

    def by_lines( from, to )
      Diff.new from, to, /[^\n]+|\n+/
    end


  end

end
