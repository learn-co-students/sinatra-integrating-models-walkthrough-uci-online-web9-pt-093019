# Your TextAnalyzer model code will go here.
class TextAnalyzer

  attr_reader :text

  def initialize(text)
    @text = text.downcase

  end

  def count_of_words
    text.split(/ /).count
  end

  def count_of_vowels
    text.scan(/[aeiou]/).count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def max_letters
    result = text.scan(/\w/).reduce(Hash.new(0)) {|h, c| h[c] += 1; h}
    sorted_result = result.sort_by{|key, value| value}.reverse
    top = sorted_result[0][1]
    max_letter = sorted_result.take_while{|key, value| value == top}
  end

  def min_letters
    result = text.scan(/\w/).reduce(Hash.new(0)) {|h, c| h[c] += 1; h}
    sorted_result = result.sort_by{|key, value| value}
    bottom = sorted_result[0][1]
    min_letters_result = sorted_result.take_while{|key, value| value == bottom}
  end
end
