module Diffing

  class Diff


    attr_reader :parts

    def initialize( from, to, pattern = nil )
      @pattern = pattern
      @parts   = calculate( split( from.to_s ), split( to.to_s ) ).flatten
    end

    def format( formatter )
      result = []
      @parts.each do |part|
        result << formatter.source( part.source )              if part.source?
        result << formatter.insert( part.insert )              if part.insert? && !part.remove?
        result << formatter.remove( part.remove )              if part.remove? && !part.insert?
        result << formatter.change( part.remove, part.insert ) if part.insert? && part.remove?
      end
      result.join
    end

    def as_ascii
      format Formats::Ascii
    end

    def as_html
      format Formats::Html
    end

    alias :to_s    :as_ascii
    alias :inspect :as_ascii


    private

    def calculate( from, to )
      if found = find_middle( from, to )
        from_l, to_l, source, from_r, to_r = found
        [ calculate( from_l, to_l ), Part.new( source: join( source ) ), calculate( from_r, to_r ) ]
      else
        [ Part.new( insert: join( to ), remove: join( from ) ) ]
      end
    end

    def find_middle( from, to, min = 0, max = nil )

      return nil if from.empty? || to.empty?

      max  = from.size unless max
      size = min + ( ( max - min ) / 2.to_f ).round

      subsets_each( from, size ) do |subset, first, last|

        if found = find_middle_index( to, subset )

          return (
            size != min && find_middle( from, to, size, max ) ||
            (
              from_l = from[ 0...first ]
              to_l   = to[ 0...found ]
              from_r = from[ last...from.size ]
              to_r   = to[ found + subset.size...to.size ]
              [ from_l, to_l, subset, from_r, to_r ]
            )
          )

        end

      end

      size != max && find_middle( from, to, min, size ) || nil

    end

    def scan_index( set, search_subset )

      offset = 0
      while found = set.slice( offset..-1 ).index( search_subset ) do
        yield found
        offset += found + 1
      end

    end

    def find_middle_index( set, search_subset )
      return set.index( search_subset ) if set.is_a?( String ) && search_subset.is_a?( String )

      set = set.dup

      index = 0

      scan_index( set.join, search_subset.join ) do |found|

        size = 0
        while size != found
          break if size + set[0].size > found
          size  += set.shift.size
          index += 1
        end

        return index if set.slice(0, search_subset.size ) == search_subset
      end
      nil
    end

    def subsets_each( from, size )
      ( from.size - size + 1 ).times do |first|
        last     = first + size
        subset = from[ first...last ]
        yield subset, first, last
      end
    end

    def split( set )
      @pattern ? set.scan( @pattern ) : set
    end

    def join( set )
      set.is_a?( Array ) ? set.join : set
    end

  end

end
