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
    morse_array = []
    array_in.each do |element|
      # binding.pry
      if element == @dictionary["a"]
        morse_array << @dictionary["a"]
      elsif element == "b"
        morse_array << @dictionary["b"]
      elsif element == "c"
        morse_array << @dictionary["c"]
      elsif element == "d"
        morse_array << @dictionary["d"]
      elsif element == "e"
        morse_array << @dictionary["e"]
      elsif element == "f"
        morse_array << @dictionary["f"]
      elsif element == "g"
        morse_array << @dictionary["g"]
      elsif element == "h"
        morse_array << @dictionary["h"]
      elsif element == "i"
        morse_array << @dictionary["i"]
      else
        "Undefined"
      end
      return morse_array
      # binding.pry
    end
  end

  def translate(string_in)
    string_in.downcase!
    array_of_letters = string_in.split("")
    morse_string_out = "" 
    process_units(array_of_letters).each do |unit|
      morse_string_out += unit.to_s
    end
  end

  

end
