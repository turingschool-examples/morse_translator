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
  end

  def translate(string)
    morse_code = ""
    string.downcase.split("").each do |letter|
      morse_code << @dictionary[letter]
    end
    return morse_code
  end

  def morse_to_eng(morse_code)
    string = ""
    morse_code.split("  ").each do |code|
      word = ""
      if code == morse_code.split("  ").last
        code.split.each do |letter|
          word << @dictionary.key(letter)
        end
        string << word
      else
        code.split.each do |letter|
          word << @dictionary.key(letter)
        end
        string << word + " "
      end
    end
    return string
  end

end
