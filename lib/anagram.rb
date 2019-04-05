require 'pry'

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
    #binding.pry
    # anagrams_array.each do |pop|
    #   if pop.sort == word_array.sort
    #     pop
    #   else
    #     pop = []
    #   end 
    # end
  end
end
