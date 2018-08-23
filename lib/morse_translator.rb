class MorseTranslator

  def initialize
    @morse_array = []
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

  def translate(message)
    holder = []
    morse = []
    holder << message.chars
    @morse_array = holder.flatten
    @morse_array.each do |char, value|
      morse << @dictionary[char] unless char == char.upcase
        morse << capitalized_dictionary[char]
    end
    morse.join
  end

  def capitalized_dictionary
    cap_dictionary = {}
    @dictionary.map do |char, value|
      cap_dictionary[char.upcase] = value
    end
    cap_dictionary
  end

end
