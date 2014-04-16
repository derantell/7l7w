if ARGV.length != 2
  puts "Usage: greppy [pattern] [file]"
  exit(1)
end

rex = Regexp.new ARGV[0]
i = 1
File.open( ARGV[1], 'r').each_line do |line|
  puts "#{i}: #{line}" if line =~ rex
  i = i+1
end

