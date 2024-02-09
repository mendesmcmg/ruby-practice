# frozen_string_literal: true

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words = {}
    @phrase.split(/\s|\n|\t|,/).map do |word|
      word.delete! ' .:,('')!&@$%^&'
      word.downcase!
      word.delete! "'" if (word[0] == "'") && (word[-1] == "'")
      if words[word]
        words[word] += 1
      else
        words[word] = 1
      end
    end
    words.delete('')
    words
  end
end
