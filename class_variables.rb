
#uses @@, which is clunk
class Car1
    #these are class variables
    @@makes = []
    @@cars = {}
    @@total_count = 0
    attr_reader :make
    def self.total_count
        @@total_count
    end
    def self.add_make(make) #note this is a class method
        unless @@makes.include?(make)
            @@makes << make
            @@cars[make] = 0
        end
    end
    def initialize(make)
        if @@makes.include?(make)
            puts "Creating new #{make}"
            @make = make
            @@cars[make]+= 1
            @@total_count += 1
        else
            raise "No such make : #{make}"
        end
    end
    def make_mates
        @@cars[self.make]
    end
end

class Car2
    @@makes = []
    @@cars = {}
    attr_reader :make
    def self.total_count
        @total_count ||= 0 #this is not @@
        #this belong to individual instance of Car
    end
    def self.total_count=(n) #this is a writer
        @total_count = n
    end

    #same stuff
    def self.add_make(make) #note this is a class method
        unless @@makes.include?(make)
            @@makes << make
            @@cars[make] = 0
        end
    end
    def initialize(make)
        if @@makes.include?(make)
            puts "Creating new #{make}"
            @make = make
            @@cars[make]+= 1
            @@total_count += 1
        else
            raise "No such make : #{make}"
        end
    end
    def make_mates
        @@cars[self.make]