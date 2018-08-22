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
    string = string.downcase
    array = string.split("")
    containor = []
    array.each do |index|
      containor << @dictionary[index]
    end
    containor.join("")
  end

  def morse_to_eng(string)
    # string = string.downcase
    words = string.split("  ")

    containor = []
    words.each do |word|

      array2 =word.split" "

      array2.each do |index|
        containor << @dictionary.key(index)

      end
      containor << " "

    end

    containor.pop
    containor.join("")
    

  end

end
