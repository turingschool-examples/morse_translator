require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_it_exists
    morse = MorseTranslator.new
    assert_instance_of MorseTranslator, morse
  end

  def test_camn_translate_lower_case_words
    morse = MorseTranslator.new
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, morse.translate("hello world")
  end

  def test_can_translate_upper_case
    morse = MorseTranslator.new
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, morse.translate("Hello World")
  end

  def test_can_translate_numbers
    morse = MorseTranslator.new
    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, morse.translate("There are 3 ships")
  end

end
