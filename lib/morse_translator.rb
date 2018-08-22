class MorseTranslator
attr_reader :dictionary,
            :translate,
            :morse_code_string,
            :morse_to_eng
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
    @morse_code_string_array = []
  end

  def translate(word)
    downcase = word.downcase
    array_of_strings = downcase.each_char.to_a
    array_of_strings.each do |letter|
      @morse_code_array << @dictionary[letter]
    end
    return @morse_code_string_array.join
  end

  def morse_to_eng(morse_code_string)
    morse_code_string.split
  end

end
