require "minitest/autorun"
require "minitest/pride"
require "./lib/morse_translator"

class MorseTranslatorTest < Minitest::Test
  def test_translator_exists
    morse_translator = MorseTranslator.new
    assert_instance_of MorseTranslator, morse_translator
  end

  def test_translates_string
    morse_translator = MorseTranslator.new
    morse = morse_translator.translate("hello world")
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, morse
  end

  def test_translates_string_with_uppercase
    morse_translator = MorseTranslator.new
    morse = morse_translator.translate("Hello World")
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, morse
  end

  def test_translates_string_with_numbers
    # skip
    morse_translator = MorseTranslator.new
    morse = morse_translator.translate("There are 3 ships")
    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, morse
  end

  def test_translates_morse_to_eng
    morse_translator = MorseTranslator.new
    morse = ".... . .-.. .-.. ---  .-- --- .-. .-.. -.."
    english = morse_translator.morse_to_eng(morse)
    assert_equal "hello world", english
  end
end
