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
    @english_array = []
  end

  def translate(word)
    downcase = word.downcase
    array_of_strings = downcase.each_char.to_a
    array_of_strings.each do |letter|
      @morse_code_string_array << @dictionary[letter]
    end
    return @morse_code_string_array.join
  end

  def morse_to_eng(morse_code_string)
    space_index = morse_code_string.index(' ')
    index = space_index + 1
    array_of_code = morse_code_string.split
    array_of_code.each do |code|
      @english_array << @dictionary.key(code)
    end
    final_array = @english_array.insert(index ," ")

    return final_array.join
  end



end
