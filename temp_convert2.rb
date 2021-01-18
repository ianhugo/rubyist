puts "Reading Celcius temp"
num = File.read("temp.dat")
celcius = num.to_i
fahrenheit = (celcius * 9 / 5) + 32
puts "The number is " + num
print "Result: "
puts fahrenheit


# use nano, to edit files in command line
# use touch to create files
#ctrl-x to exit, rmb to savr
