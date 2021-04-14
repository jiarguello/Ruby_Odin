dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
phrase = "Howdy partner, sit down! How's it going?"

def sub_strings(string, dictionary)
  splited_phrase = string.downcase.split(' ')
  object = []
  dictionary.each do | word |
    splited_phrase.each do | item |
      if (item.include?(word))
        object.push(word)
      end
    end
  end
  return object.tally
end

p sub_strings('below', dictionary);
p sub_strings(phrase, dictionary);
