
obj = Object.new
#defining generic object

def obj.talk
    puts "I am an object."
    puts "(Do you object?)"
end

def obj.c2f(c)
    c * 9.0 / 5 + 32
    return (1+1) #return takes precedence
end

obj.talk
puts obj.c2f(100)

if obj.respond_to?("talk")
    obj.talk
else
    puts "oops"
end

def obj.multi_args(*x)
    puts "I can take zero or more argument"
end

def obj.more(a, b, *c)
    puts "hi"
    p a, b
    p c[1]

end

obj.more( 1, 2, 3, 4, 5)

def change_string(str)
    begin 
        str.replace("New string content!")
    rescue FrozenError
        puts "unfreeze please"
    rescue 
        puts "all errors"
    ensure
        puts "always"
    end
end

s = "Original string"
s.freeze
change_string(s) #the changes in the method, affects other references to the same objectofc 
puts s

