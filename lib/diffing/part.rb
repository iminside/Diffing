module Diffing


  class Part

    attr_reader :source, :insert, :remove

    def initialize( source: '', insert: '', remove: '' )
      @source, @insert, @remove = source, insert, remove
    end

    def source?
      not @source.empty?
    end

    def insert?
      not @insert.empty?
    end

    def remove?
      not @remove.empty?
    end

  end


end
