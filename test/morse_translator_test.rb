require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_it_exists
    morse_translator = MorseTranslator.new
    assert_instance_of MorseTranslator, morse_translator
  end
  
  def test_it_translates_a_string
    morse_translator = MorseTranslator.new
    actual = morse_translator.translate("hello world")
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, actual
  end

  def test_it_translates_a_mixed_case_string
    morse_translator = MorseTranslator.new
    actual = morse_translator.translate("Hello World")
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, actual
  end
  
  def test_it_translates_another_mixed_case_string
    morse_translator = MorseTranslator.new
    actual = morse_translator.translate("There are 3 ships")
    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, actual
  end

  def test_it_translates_one_morse_code_character_into_english
    morse_translator = MorseTranslator.new
    actual = morse_translator.morse_char_to_eng_char("--...")
    expected = "7"
    assert_equal expected, actual
  end
  
  def test_it_translates_morse_code_string_into_english
    morse_translator = MorseTranslator.new
    morse_string = ".--. . .- -.-. ."
    actual = morse_translator.morse_to_eng(morse_string)
    expected = "peace"
    assert_equal expected, actual
  end
  
end
