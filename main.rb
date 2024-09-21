dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  
  result = string.downcase.split().reduce(Hash.new(0)) do |result, string|
    dictionary.each do |substring|
      if string.include?(substring)
        result[substring] += 1
      end
    end
    result
  end

  puts result
end

puts substrings("ii ii ii", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }