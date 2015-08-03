module Diffing

  module Format

    module Ascii

      class << self


        def source( value )
          value
        end

        def insert( value )
          "{+\"#{ value }\"}"
        end

        def delete( value )
          "{-\"#{ value }\"}"
        end

        def replace( from, to )
          "{\"#{ from }\" >> \"#{ to }\"}"
        end


      end

    end

  end

end
