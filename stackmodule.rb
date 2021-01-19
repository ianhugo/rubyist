module Stacklike
    def stack
        @stack ||= []
    end
    def add_to_stack(obj)
        stack.push(obj)
    end
    def take_from_stack
        stack.pop
    end
end

class Bicycle
    attr_reader :gears, :wheels, :seats
    def initialize(gears=1)
        @wheels = 2
        @seats = 1
        @gears = gears
    end
end

class Tandem < Bicycle
    def initialize(gears)
        super()
        @seats = 2
    end
end

a = Tandem.new(3)
p a.gears
