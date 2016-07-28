# Your code goes here!
require 'pry'

class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(word_arr)
    match_arr = []
    word_arr.each do |letters|

      sorted_letters = letters.split("").sort
      sorted_letters = sorted_letters.join
      
      init_word = @word.split("").sort
      init_word = init_word.join

      if init_word == sorted_letters
        match_arr << letters
      end
    end
    return match_arr
  end

end
