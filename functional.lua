function factorial(n)
        if n == 1 or n == 0 then
                return 1
        else
                return n * factorial(n - 1)
        end
end

io.write("Enter a number:")

local number = io.read("*n")

io.write("factorial is ", factorial(number), "\n")

-- closure and anonymous function

function multiply(x)
        return function(y)
                return x * y
        end
end

local mul = multiply(10)
print(mul(5))

--ananymous function

local modulo2 = function(x)
        return x % 2 == 0 and "even" or "odd"
end
print(modulo2(10))

local moduulo2_1 = function(x)
        print(x % 2 == 0 and "even" or "odd")
end
moduulo2_1(11)


-- unpacking in lua 

local x,y,z = 1,2,3
print(x,y,z)

local func_a= function() return 1,2,3 end
a,b,c = func_a()
print(a,b,c)

local a=1 ; a = 2; a = 3
print(a)
 
