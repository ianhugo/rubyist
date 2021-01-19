ticket = Object.new

def ticket.date
    "01/02/03"
end

def ticket.venue 
    "Town Hall"
end

def ticket.event
  "Author's reading"
end

def ticket.performer 
    "Mark Twain"
end
def ticket.seat
  "Second Balcony, row J, seat 12"
end

def ticket.price 
    5.50
end

#printing the info
print "This ticket is for: " 
print ticket.event + ", at " 
print ticket.venue + ", on " 
puts ticket.date + "."
print "The performer is " 
puts ticket.performer + "." 
print "The seat is "
print ticket.seat + ", " 
print "and it costs $"
puts "%.2f." % ticket.price


def ticket.available?
	false
end

if ticket.available?
	puts "nice"
else
	puts "oops"
end

if "abc" #most things evaluate to true
    puts "hi"
end