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

  def morse_to_eng(morse_code)
    morse_code_array = morse_code.split("  ")
    counter = morse_code_array.length
    loop do
      counter.times do |x|
        morse_code_array[x]
        counter -= 1
      end
    break if counter == 0
    return
    end
    if morse_code_array.length > 1
      word = morse_code_array.slice(0, 1)
    else
    end
    binding.pry
  end

end
