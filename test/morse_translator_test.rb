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

  def test_translate_can_break_down_message_with_capitals
    morse_translator = MorseTranslator.new

    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d",]
    actual = morse_translator.split_message("Hello World")
    assert_equal expected, actual
  end

  def test_it_can_use_dictionary
    morse_translator = MorseTranslator.new

    expected = ["....", ".", ".-..", ".-..", "---"," ", ".--", "---", ".-.", ".-..", "-.."]
    actual = morse_translator.use_dictionary(["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d",])
    assert_equal expected, actual
  end

  def test_translate_works_with_all_lowercase
    morse_translator = MorseTranslator.new

    expected = "......-...-..--- .-----.-..-..-.."
    actual = morse_translator.translate("hello world")
    assert_equal expected, actual
  end

  def test_translate_works_with_capitals
    morse_translator = MorseTranslator.new

    expected = "......-...-..--- .-----.-..-..-.."
    actual = morse_translator.translate("Hello World")
    assert_equal expected, actual
  end

  def test_translate_works_with_capitals_and_numbers
    morse_translator = MorseTranslator.new

    expected = "-......-.. .-.-.. ...-- ..........--...."
    actual = morse_translator.translate("There are 3 ships")
    assert_equal expected, actual
  end

end
