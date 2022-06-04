# substrings method takes a string of words and array of valid words (dictionary)
# as arguments. It returns a hash listing each substring that was found
# in the original string and how many times it was found.

def substrings(string, dictionary)
    matches = Hash.new
 # no need to split it into array
 # RegExp of: (?=abc) => positive lookahead
    dictionary.each do |word|
        matches[word] = string.downcase.scan(/(?=#{word})/).count if string.downcase.include?(word)
    end

    matches

end

my_string = "Howdy partner 123 , sit down! 456 How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings(my_string,dictionary)