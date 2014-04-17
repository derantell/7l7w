#!/usr/bin/ruby

class ActsAsCsv
  def read
    file = File.new( self.class.to_s.downcase + '.txt')
    @headers = file.gets.chomp.split(', ')

    file.each do |row|
      @result << row.chomp.split(', ')
    end
  end

  def headers
    @headers
  end

  def csv_contents
    @result
  end

  def initialize
    @result = []
    read
  end
end

class RubyCsv < ActsAsCsv
end

csv = RubyCsv.new
puts csv.headers.inspect
puts csv.csv_contents.inspect
