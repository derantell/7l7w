# Do's
#
# Print the contents of an array of sixteen numbers, four numbers at a
# time, using just each. Now, do the same with each_slice in Enumerable.
arr = []
(1..16).each do |i| 
  arr.push i
  if i % 4 == 0 
    puts "#{arr}"
    arr = []
  end
end
  
(1..16).each_slice(4) { |part| puts "#{part}" }
