class Phrase 
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words = {}
    @phrase.split(/\s|\n|\t|,/).map {
      |word| 
      word.delete! " .:,("")!&@$%^&"
      word.downcase!
      if word[0]=="'" and word[-1]=="'"
        word.delete! "'"
      end
      if words[word] 
        words[word] += 1
      else 
        words[word] = 1
      end
    } 
    words.delete("")
    words
  end
end