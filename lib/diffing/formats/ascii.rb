module Diffing

  module Format

    module Ascii

      class << self


        def source( value )
          value
        end

        def insert( value )
          "{+`#{ value }`}"
        end

        def remove( value )
          "{-`#{ value }`}"
        end

        def change( from, to )
          "{`#{ from }`>>`#{ to }`}"
        end


      end

    end

  end

end
