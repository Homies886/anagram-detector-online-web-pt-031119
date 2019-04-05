require 'pry'

class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    word_array = @word.split("")
    anagrams_array = anagrams.each do |words|
      words.split("")
    end
    anagrams_array.each do |pop|
      if pop.split("").sort == word_array.sort
        pop.split
      else
        pop = []
      end 
    end
  end
end
