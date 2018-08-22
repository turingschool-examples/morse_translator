require 'minitest/autorun'
require 'minitest/pride'
require './morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_that_the_morse_translator_class_exists
    morse = MorseTranslator.new
    assert_instance_of MorseTranslator, morse
  end

  def test_that_the_translate_method_translates_to_morse_code
    morse = MorseTranslator.new
    expected = morse.translate("hello world")
    assert_equal "......-...-..--- .-----.-..-..-..", expected
  end

  def test_that_the_translate_method_translates_upercase_letters_as_well
    morse_translator = MorseTranslator.new
    actual = morse_translator.translate("Hello World")
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, actual
  end

  def test_that_the_translate_method_translates_upercase_letters_and_numbers
    morse_translator = MorseTranslator.new
    actual = morse_translator.translate("There are 3 ships")
    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, actual
  end
end
