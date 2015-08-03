module Diffing


  class Part

    attr_reader :source, :insert, :delete

    def initialize( source: '', insert: '', delete: '' )
      @source, @insert, @delete = source, insert, delete
    end

    def source?
      not @source.empty?
    end

    def insert?
      not @insert.empty?
    end

    def delete?
      not @delete.empty?
    end

    def replace?
      not @insert.empty? and not @delete.empty?
    end

  end


end
