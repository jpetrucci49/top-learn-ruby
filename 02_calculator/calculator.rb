#write your code here

def add num1, num2
    num1 + num2
end

def subtract num1, num2
    num1 - num2
end

def sum arr
    result = 0
    arr.each do |num|
        result += num
    end
    result
end

def multiply arr
    result = 1
    arr.each do |num|
        result *= num
    end
    result
end

def power num1, num2
    num1 ** num2
end

def factorial num
    num >= 0 ? num <= 1 ? 1 : num * factorial(num-1) : 'Positive integers only'
end