class MorseTranslator
  attr_accessor :dictionary

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

  def translate(message)
    translation = ""
    find_morse_code_words(message).each do |code|
      translation += code
    end
    return translation
  end

  def find_morse_code_words(message)
      letters = message.downcase.chars
      letters.map do |letter|
        find_morse_code_letter(letter)
      end
  end

  def find_morse_code_letter(character)
    dictionary.find do |letter|
      if letter[0] == character
      return letter[1]
      end
    end
  end
  #######

  def find_letter_from_morse(dots)
    dictionary.find do |letter|
      if letter[1] == dots
        return letter[0]
      end
    end
  end

#still working on functionality to handle spacing
  def word_from_morse(characters)
    messages = characters.split(" ")
    messages.map do |message|
          find_letter_from_morse(message)
    end
  end

  #still working on functionality to handle spacing
  def morse_to_eng(message)
    translation = ""
    word_from_morse(message).each do |code|
      translation += code
    end
    return translation
  end

end
