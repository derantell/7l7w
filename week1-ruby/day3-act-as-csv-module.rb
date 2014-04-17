#!/usr/bin/ruby

module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end 
  end 

  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'

      file = File.new filename

      @headers = file.gets.chomp.split(', ')
      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    def each( &block )
      @csv_contents.each do |row|
        yield( CsvRow.new(Hash[@headers.zip(row)]) )
      end
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end
  end
end

class CsvRow
  def initialize(row_data = {})
    @row = row_data
  end

  def method_missing name, *args
    @row[name.to_s]
  end
end

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end

csv = RubyCsv.new
csv.each {|row| puts row.one}
csv.each {|row| puts row.two}

