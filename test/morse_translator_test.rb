require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

require 'pry'

class MorseTranslatorTest < Minitest::Test
  def test_if_it_exists
    morse_translator = MorseTranslator.new
    assert_instance_of MorseTranslator, morse_translator
  end

  def test_if_the_string_passes
    morse_translator = MorseTranslator.new

    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, morse_translator.translate("hello world")
  end

  def test_the_capitalized_hash
    skip
    morse_translator = MorseTranslator.new

    expected = {"A"=>".-", "B"=>"-...", "C"=>"-.-.", "D"=>"-..", "E"=>".", "F"=>"..-.", "G"=>"--.", "H"=>"....", "I"=>"..", "J"=>".
              ---", "K"=>"-.-", "L"=>".-..", "M"=>"--", "N"=>"-.", "O"=>"---", "P"=>".--.", "Q"=>"--.-", "R"=>".-.", "S"=>"...", "T
              "=>"-", "U"=>"..-", "V"=>"...-", "W"=>".--", "X"=>"-..-", "Y"=>"-.--", "Z"=>"--..", "1"=>".----", "2"=>"..---", "3"=>
              "...--", "4"=>"....-", "5"=>".....", "6"=>"-....", "7"=>"--...", "8"=>"---..", "9"=>"----.", "0"=>"-----", " "=>" "}
    assert_equal expected, morse_translator.capitalized_dictionary
  end

  def test_if_the_string_passes
    morse_translator = MorseTranslator.new

    expected_1 = "......-...-..--- .-----.-..-..-.."
    expected_2 = "......-...-..--- .-----.-..-..-.."
    assert_equal expected_1, morse_translator.translate("hello world")
    assert_equal expected_2, morse_translator.translate("Hello World")
  end

end
