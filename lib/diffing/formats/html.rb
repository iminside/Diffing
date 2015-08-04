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

        def delete( value )
          "<del>#{ value }</del>"
        end

        def replace( from, to )
          delete( from ) + insert( to )
        end


      end

    end

  end

end
