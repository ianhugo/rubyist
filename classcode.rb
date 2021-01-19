
class Ticket
    def initialize(venue, date)
        @venue = venue
        @date = date
    end

    def venue
        @venue
    end

    def date
        @date
    end

    def event
        "maybe"
    end
end

ticket = Ticket.new("Town Hall", "11/12/13")
puts ticket.event
puts ticket.date
puts "Venue is #{"%s" % ticket.venue}"
puts format("%s", ticket.date)


class Person
    def set_name(string)
        puts "Setting person"
        @name = string
    end

    def get_name
        puts "Returning"
        @name
    end
end

joe = Person.new
joe.set_name("Joe")
puts joe.get_name