require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_check_it_exists
    morse_translator = MorseTranslator.new

    assert_instance_of MorseTranslator, morse_translator
  end

  def test_translate_can_break_down_message
    morse_translator = MorseTranslator.new

    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d",]
    actual = morse_translator.split_message("hello world")
    assert_equal expected, actual
  end

  def test_translate_works
    skip
    morse_translator = MorseTranslator.new

    expected = "......-...-..--- .-----.-..-..-.."
    actual = morse_translator.translate("hello world")
    assert_equal expected, actual
  end

end
