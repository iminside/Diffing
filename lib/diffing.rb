require 'diffing/diff'
require 'diffing/part'
require 'diffing/formats/ascii'


module Diffing

  class << self


    def by_lines( from, to )
      Diff.new from, to, "\n"
    end

    def by_words( from, to )
      Diff.new from, to, " "
    end

    def by_chars( from, to )
      Diff.new from, to
    end


  end

end
