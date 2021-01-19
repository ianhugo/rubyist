array = [1, 2, 3]
a = array.map{ |n| n * 10 } 
print a

5.times {puts "writing"}

array = [1, 2, 3, 4, 5]
array.each{ |e| puts "The block got handed #{e}." }


def block_local_variable
	x = "original"
	3.times do |i;x|	#; indicates need x for block
		x = i			#x is local to block
		puts "x in the block is now #{x}"
	end
	puts "x after block ended is #{x}"
end
block_local_variable