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


  def process_units(array_in)
    morse_string = ""
    array_in.each do |element|
      binding.pry
      if element == @dictionary["a"]
        morse_string += @dictionary["a"]
      elsif element == "b"
        morse_string += @dictionary["b"]
      elsif element == "c"
        morse_string += @dictionary["c"]
      elsif element == "d"
        morse_string += @dictionary["d"]
      elsif element == "e"
        morse_string += @dictionary["e"]
      elsif element == "f"
        morse_string += @dictionary["f"]
      elsif element == "g"
        morse_string += @dictionary["g"]
      elsif element == "h"
        morse_string += @dictionary["h"]
      elsif element == "i"
        morse_string += @dictionary["i"]
      else
        "Undefined"
      end
      morse_string
      binding.pry
    end
  end

  def translate(string_in)
    lowercase_string(string_in)
    array_of_letters = string_in.split("")
    # binding.pry
    processed_array = process_units(array_of_letters)
    processed_array
    # binding.pry
  end

  def lowercase_string(string)
    string.downcase
  end

end
