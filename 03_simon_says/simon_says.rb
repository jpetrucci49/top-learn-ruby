#write your code here

def echo str
    str
end

def shout str
    str.upcase
end

def repeat str, num = 2
    Array.new(num, str).join(' ')
end

def start_of_word str, i
    str[0..i-1]
end

def first_word str
    str.split[0]
end

def titleize str
    no_caps = ["and", "or", "the", "over", "to", "the", "a", "but"]
    str.split(' ').map.with_index do |word, i| 
        no_caps.include?(word) && i > 0 ? word : word.capitalize
    end.join(' ')
end