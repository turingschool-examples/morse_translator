require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator.rb'

class MorseTranslatorTest < Minitest::Test
  def test_it_if_exits
    morse_translator = MorseTranslator.new
    assert_instance_of MorseTranslator, morse_translator
  end

  def test_it_if_has_attrubutes
    morse_translator = MorseTranslator.new
    assert_equal dictionary = {"a" => ".-",
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
                    " " => " "},
     morse_translator.dictionary
  end

  def test_it_if_can_translate
      morse_translator = MorseTranslator.new
      assert_equal "......-...-..--- .-----.-..-..-..",
      morse_translator.translate("hello world")
  end
end
