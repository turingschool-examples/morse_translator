require './lib/morse_translator'
require 'minitest/autorun'
require 'minitest/pride'

class MorseTranslatorTest < Minitest::Test
  def test_it_exists
    morse_translator = MorseTranslator.new

    assert_instance_of MorseTranslator, morse_translator
  end

  def test_it_can_translate_lower_case_letters
    morse_translator = MorseTranslator.new

    expected = "......-...-..--- .-----.-..-..-.."
    actual = morse_translator.translate("hello world")
    assert_equal expected, actual
  end

  def test_it_can_translate_upper_case_letters
    morse_translator = MorseTranslator.new

    expected = "......-...-..--- .-----.-..-..-.."
    actual = morse_translator.translate("Hello World")
    assert_equal expected, actual
  end

  def test_it_can_translate_letters_and_numbers
    morse_translator = MorseTranslator.new

    expected = "-......-.. .-.-.. ...-- ..........--...."
    actual = morse_translator.translate("There are 3 ships")
    assert_equal expected, actual
  end

  def test_it_can_translate_morse_to_english
    morse_translator = MorseTranslator.new

    expected = "hello world"
    actual = morse_translator.translate_morse(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end
end
