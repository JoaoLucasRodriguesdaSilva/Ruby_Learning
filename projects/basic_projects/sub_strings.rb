def substring(string, dictionary)
  answer = {}
  dictionary.each do |word|
    string.include?(word) ? answer[word] = string.scan(word).count : nil
  end
  p answer
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substring("Howdy partner, sit down! How's it going?", dictionary)
