module Diffing

  module Format

    module Html

      class << self


        def source( value )
          value
        end

        def insert( value )
          "<ins>#{ value }</ins>"
        end

        def remove( value )
          "<del>#{ value }</del>"
        end

        def change( from, to )
          remove( from ) + insert( to )
        end


      end

    end

  end

end
