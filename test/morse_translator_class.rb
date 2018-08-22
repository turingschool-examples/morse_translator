require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test
  def test_it_exist
    morse_translator = MorseTranslator.new

    assert_instance_of MorseTranslator, morse_translator
  end

  def test_it_can_translate_into_single_characters
    morse_translator = MorseTranslator.new

    expected = ["h","e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    assert_equal expected, morse_translator.into_chars("hello world")
  end

  def test_it_can_translate_word
    morse_translator = MorseTranslator.new

    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, morse_translator.translate("hello world")
  end
end
