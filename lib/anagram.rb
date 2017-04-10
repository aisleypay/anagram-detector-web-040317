require "pry"
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    anagrams.select { |anagram|
      anagram.split("").sort.join == self.word.split("").sort.join
    }
  end

end
