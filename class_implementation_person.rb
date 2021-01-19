
class Person
    PEOPLE = []
    attr_read :name, :hobbies, :friends
    def initialize(name)
        @name = name
        @hobbies = []
        @friends = []
        PEOPLE << self
    end
    def has_hobby(hobby)
        @hobbies << hobby
    end
    def has_friend(friend)
        @friends << friend
    end
    def  self.method_missing(m, *args) #note this is a class method because has self starting
        method = m.to_s
        #intercepting method_missing error procedure
        if method.start_with?("all_with_") # if method call starts with "all_with_"
            attr = method[9..-1] #take slice, starting from 9
            if self.public_method_defined?(attr) #check if substring corresponds to one of Person's instance methods (hobbies or friends) (succeed branch)
                PEOPLE.find_all do |person|
                    person.send(attr).include?(args[0])
                end
            else #(fail branch)
                raise ArgumentError, "Can't find #{attr}"
            end
        else
            super
        end
    end
end

