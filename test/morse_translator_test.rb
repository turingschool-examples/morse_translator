require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < MiniTest::Test
  def test_it_exists
  dictionary = {"a" => ".-",
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
    morse_translator = MorseTranslator.new(dictionary)
    assert_instance_of MorseTranslator(dictionary)
  end
end
