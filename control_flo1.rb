array1 = [0, 1, 2, 3]
puts "counting"
for c in array1
    puts "#{c}"
end

puts array1.map do |n| n *10 end