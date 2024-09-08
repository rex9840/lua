-- this is a single line  comment

--[[
this is a multi-line comment
--]]

local number = 42                                       -- can be both  int and float
local str = "hello world"                               -- string
local multi_line_str = [[this is a multipline string ]] -- multi line string
local list = { 1, 2, 3, 4, 5 }                          -- tables -> can be used as list, dict, set
-- nul or void in lua is nil 
local null = nil

-- printing using combining string manipulation and std.io(default stdout)

io.write("hello world\n")
io.write(string.format("number: %d and type :%s ", number, type(number)), "\n")
io.write("str:", str, " and type:", type(str), "\n")
io.write("str:" .. multi_line_str .. " and type:" .. type(multi_line_str), "\n")
io.write("list:", table.concat(list, "⭕"), " and type:", type(list), "\n")
print("null:", null, " and type:", type(null))

-- blocks are defined between do and end for if its then and end ...->  its a scope

do
        local x = 10
        local y = 20
        io.write("x:", x, " y:", y, "\n")
end

-- loops and if else

Loop = 10 -- global variable starts with capital letter and camel case is acceptable
io.write("**********\n")
while true do
        io.write("infinite loop\t", "index:", Loop, "\n")
        if Loop == 5 then
                break
        elseif Loop == 6 then
                io.write("loop now breaks at 5 \n")
        else
                io.write("loop continues\n")
        end
        Loop = Loop - 1
end
io.write("**********\n")

io.write("\n")

while Loop ~= 0 do
        io.write("finite loop\t", "index:", Loop, "\n")
        Loop = Loop - 1
end

for i = 1, 10, 2 do
        io.write("for loop\t", "index:", i, "\n")
end

-- repeat

repeat
        io.write("repeat loop\t", "index:", Loop, "\n")
        Loop = Loop + 1
until Loop == 10

-- return nil for undefined variables

local a = tostring(b)

io.write("a:", a, " and type:", type(a), "\n")

-- stdin
do
        io.write("Enter a number:")
        a = io.read("*n") -- *n for number
        io.write("a:", a, " and type:", type(a), "\n")
end

io.write("trying to acess a : ", a, "type:", type(a), "\n")

-- ternary operator
local value = true and 1 or 0

io.write("value:", value, " and type:", type(value), "\n")
