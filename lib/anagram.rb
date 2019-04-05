class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    words_match = []
    word_array = @word.split("")
    anagrams_array = anagrams.map do |words|
      if words.split("").sort == word_array.sort
        words_match << words
      end
    end
    words_match
  end
end
