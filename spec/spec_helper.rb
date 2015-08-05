require 'diffing'


module Diffing

  module SpecHelper

    def diff( type = :by_chars, from = "", to = "" )
      Diffing.send type, from, to
    end

    def diff_by_chars( from = "", to = "" )
      diff :by_chars, from, to
    end

    def diff_by_words( from = "", to = "" )
      diff :by_words, from, to
    end

    def diff_by_lines( from = "", to = "" )
      diff :by_lines, from, to
    end

  end

end



RSpec.configure do |config|

  config.include Diffing::SpecHelper

end
