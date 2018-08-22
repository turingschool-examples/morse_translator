require './lib/dictionary'
class MorseTranslator
  attr_reader :english_morse
  def initialize
    @english_morse = []
    @dictionary = Dictionary.new
    @morse_english = []
  end

  def translate(input)
    input.downcase.chars.map do |letter|
      @english_morse << @dictionary.morse[letter]
    end
    @english_morse.join
  end

  def translate_morse(morse_code)
    morse_code.split.map do |marking|
      @morse_english << @dictionary.english[marking]
    end
    @morse_english.join
  end
end
