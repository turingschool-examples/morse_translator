

class MorseTranslator
  attr_reader :dictionary
  def initialize(dictionary)
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
    string_array = []
    holder = string.downcase.chars
    holder.each do |char|
      dictionary.each do |key,val|
        if char == key
          string_array << val
        end
      end
    end
    string_array.join("")
  end

  def morse_to_eng(string)
    string_array = []
    holder = string.chars
    holder.each do |char|
      dictionary.each do |key,val|
        if val == char
          string_array << key
        end
      end
    end
    string_array.join("")
  end
end


morse_translator = MorseTranslator.new({"a" => ".-",
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
                " " => " "})

p morse_translator.translate("hello world")
p morse_translator.translate(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
