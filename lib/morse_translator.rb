require 'pry'
class MorseTranslator

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

    @morse_to_eng_dictionary = @dictionary.invert

  end

  def translate(input)
    input_array = input.downcase.chars
    translate = []
      input_array.map do |character|
        translate << @dictionary[character]
      end
    translate.join
  end

  def morse_to_eng(input)
    split = input.split(' ')
    #input_array = input_split.chars
    translate = []
      split.map do |character|
        translate << @morse_to_eng_dictionary[character]
      end
      translate.join

  end


end
