#print "Enter number: "
#n = gets.to_i
#begin
#	result = 100/n
#rescue
#	puts "number no work"
#	exit
#end
#puts "done"


#class MyNewException < Exception
#end
#raise MyNewException, "error message custom"

module TextHandler
	class InvalidLineError < StandardError
	end
end

raise TextHandler::InvalidLineError