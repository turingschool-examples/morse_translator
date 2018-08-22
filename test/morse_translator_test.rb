require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_it_exists
    morse_translator = MorseTranslator.new
    assert_instance_of MorseTranslator, morse_translator
  end

  def test_camn_translate_lower_case_words
    morse_translator = MorseTranslator.new
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, morse_translator.translate("hello world")
  end

  def test_can_translate_upper_case
    morse_translator = MorseTranslator.new
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, morse_translator.translate("Hello World")
  end

  def test_can_translate_numbers
    morse_translator = MorseTranslator.new
    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, morse_translator.translate("There are 3 ships")
  end

  def test_it_can_translate_to_enlish
    morse_translator = MorseTranslator.new
    actual = morse_translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
    assert_equal "hello world", actual
  end

end
