class Book
    def title
        @title
    end

    def title=(str)
        no_caps = ["and", "or", "the", "over", "to", "the", "a", "but", "in", "of", "an"]
        @title = str.split(' ').map.with_index do |word, i|
            no_caps.include?(word) && i > 0 ? word : word.capitalize
        end.join(' ')
    end
end
