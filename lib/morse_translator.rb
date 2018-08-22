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
                  # # Handling spaces in encrypted message (iteration 4)
                  # "!" => "! "}
  end


  def translate(string)
    converted = convert_case(string)
    encrypted = encrypt(converted)
    return encrypted
  end

  def encrypt(string)
    characters = string.chars
    changed = characters.map do |char|
      @dictionary[char]
    end
    translated = changed.join
    return translated
  end

  def convert_case(string)
    string.downcase
  end

  def morse_to_eng(encrypted)
    digits = encrypted.split(" ")
    # binding.pry
    values = @dictionary.values
    # binding.pry
    eng_letters = digits.map do |dig|
      letter = reverse_lookup(dig)
    end
    english = eng_letters.join
    binding.pry
    return english
  end


  def reverse_lookup(letter_encryption)
    keys = @dictionary.keys
    values = @dictionary.values
    index = values.index(letter_encryption)
    eng_letter = keys[index]
    # binding.pry
  end


  def manage_message_spaces(string)
    chars = string.chars
    index = 0
    altered = []
    while index < chars.size
      if chars[index] == " " && chars[index+1] == " "
        altered << chars[index] = nil
        index += 1
      else
        altered << chars[index]
        index += 1
      end
    end
    binding.pry
    return altered
  end



end
