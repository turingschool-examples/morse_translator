require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_it_exists
    morse = MorseTranslator.new
    assert_instance_of MorseTranslator, morse
  end

  def test_it_has_a_dictionary
    skip
  end

  def test_translate
    morse = MorseTranslator.new
    string = "bcd"
    b = "-..."
    c = "-.-."
    d = "-.."
    string_2 = "There are 3 ships"
    assert_equal b + c + d, morse.translate(string)
    assert_equal "-......-.. .-.-.. ...-- ..........--....", morse.translate(string_2)
    assert_equal "......-...-..--- .-----.-..-..-..", morse.translate("Hello World")
  end

end
