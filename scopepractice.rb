module M
    class C
        class D

            def self.add
                x = 1+1
                print x
            end 
            
            module N
                X = 1
            end
        end
    end
end

print M::C::D::N::X.to_s

print M::C::D.add