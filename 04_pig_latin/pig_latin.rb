#write your code here

def translate str
    words = str.split(' ').map do |word|
        # For each word in the words array, use regex capture groups to first 
        # search for qu, if not present, search for the rest of the consonants.
        # This will return an array of vlaues, index 0 is the original word passed
        # to the match. index 1 is the string up to the first match, and
        # index 2 is all characters after the match.
        match = word.match(/^((?:qu|[bcdfghjklmnpqrstvwxz])*)(.*)$/)
        # return the characters after the regex match,
        # then concat the string up to the match, and 'ay' on the end.
        match[2] + match[1] + 'ay'
    end
    # Return the mapped words array, joined with spaces.
    words.join(' ')
end