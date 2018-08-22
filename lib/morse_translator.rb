require 'pry'

class MorseTranslator

  attr_reader :dictionary

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end

  def translate(string)
    string_array = string.downcase.chars
    morse_array = string_array.map do |character|
      dictionary["#{character}"]
    end
    morse_array.join{""}
  end


  def number_of_words(morse_code)
    morse_code_array = morse_code.split("  ")
    counter = morse_code_array.length
    return morse_code_array
  end

  def morse_to_eng(morse_code)
    morse_word_array = morse_code.split("  ")
    num_of_words = morse_word_array.length
    final = morse_word_array.map do |word|
      word = word.split(" ")
      translation = word.map do |code|
      dictionary.key("#{code}")
      end
    end
    final
  end

end
