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
    @morse_string = ""

  end


  def compare_units(element, letter)
    if element == letter
      @morse_string += @dictionary[letter]
    end
  end


  def process_units(array_in)
    letters = ('a'..'z').to_a
    [1,2,3,4,5,6,7,8,9,0].to_a.each do |number|
      letters << number.to_s
    end
    letters << " "
    array_in.each do |element|
      letters.each do |letter|
        compare_units(element,letter)
      end
    end
    @morse_string
  end

  def translate(string_in)
    array_of_letters = lowercase_string(string_in).split("")

    process_units(array_of_letters)
    # binding.pry
  end

  def lowercase_string(string)
    string.downcase
  end

end
