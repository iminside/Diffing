require 'diffing/diff'
require 'diffing/part'
require 'diffing/formats/ascii'
require 'diffing/formats/html'


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
