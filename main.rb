dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  result = Hash.new(0)

  dictionary.each do |substring|
    unless word.index(substring).nil?
      result[substring] += 1
    end
  end

  puts result
end

puts substrings("below", dictionary)
#=> { "below" => 1, "low" => 1 }
