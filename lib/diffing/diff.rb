module Diffing

  class Diff


    attr_reader :parts

    def initialize( from, to, delimiter = '' )
      @delimiter = delimiter
      @parts = calcucate( from.to_s, to.to_s ).flatten
    end

    def format( format = Format::Ascii )
      result = []
      @parts.each do |part|
        result << format.source( part.source ) if part.source?
        if part.replace? and format.respond_to?( :replace )
          result << format.replace( part.delete, part.insert )
        else
          result << format.insert( part.insert ) if part.insert?
          result << format.delete( part.delete ) if part.delete?
        end
      end
      result.join @delimiter
    end

    def to_s
      format
    end

    def inspect
      format
    end


    private

    def calcucate( from, to )
      if found = find_middle( from, to )
        from_l, to_l, source, from_r, to_r = found
        [ calcucate( from_l, to_l ), Part.new( source: source ), calcucate( from_r, to_r ) ]
      else
        [ Part.new( insert: to, delete: from ) ]
      end
    end

    def find_middle( from, to, min = 0, max = nil )

      return nil if from.empty? or to.empty?

      max  = from.size unless max
      size = min + ( ( max - min ) / 2.to_f ).round

      substrings_each( from, size ) do |substring, first, last|

        if found = to.index( substring )

          return (
            size != min and find_middle( from, to, size, max ) or
            (
              from_l = from[ 0...first ]
              to_l   = to[ 0...found ]
              from_r = from[ last...from.size ]
              to_r   = to[ found + substring.size...to.size ]
              [ from_l, to_l, substring, from_r, to_r ]
            )
          )

        end
      end

      size != max and find_middle( from, to, min, size ) or nil
    end

    def substrings_each( from, size )
      ( from.size - size + 1 ).times do |first|
        last     = first + size
        substring = from[ first...last ]
        yield substring, first, last
      end
    end


  end

end
