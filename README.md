The Odin Project - Sub Strings

Assignment:
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

Done:
- working for one word
- Capture mutiple words (fix capitalization issue)

To do:
- Values are not increasing for multiple instances


Past idea(s):

  bits = word.split("") # => ["b","e","l","o","w"] make string into array so I can use array methods on it
  piece_to_compare = bits[0] #"b"

  dictionary.each do |substring|
    if piece_to_compare.length == 0
      break
    else
      #compare the piece to the substrings, return matches
      dictionary.select { |substring| substring == piece_to_compare }
      #add the matches to the hash if not already in the hash
      #if already in the hash, += 1


      # dictionary.reduce(Hash.new()) do |result, dictionary|
      #   result[dictionary] += 1
      #   result
      # end
      bits.shift #remove first string; piece_to_compare[0] refers to next letter
      
    end
  end
  result