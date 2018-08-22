require './lib/dictionary'
class MorseTranslator
  attr_reader :morse_english
  def initialize
    @morse_english = []
    @dictionary = Dictionary.new
  end

  def translate(input)
    input.downcase.chars.map do |letter|
      @morse_english << @dictionary.morse[letter]
    end
    @morse_english.join
  end

end
