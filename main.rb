dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  
  dictionary.reduce(Hash.new(0)) do |result, substring|
    if word.downcase.include?(substring) || substring != nil
      result[substring] += 1
      result
    end
  end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
# 
#
#  # result = Hash.new(0)

  # dictionary.each do |substring|
  #   unless word.downcase.index(substring).nil?
  #     result[substring] += 1
  #   end
  # end

  # puts result