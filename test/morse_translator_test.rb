require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'
require 'pry'

class MorseTranslatorTest < Minitest::Test

  def test_a_new_instance_is_created
    morse_translator = MorseTranslator.new

    assert_instance_of MorseTranslator, morse_translator
  end

  def test_translation_of_one_character
    morse_translator = MorseTranslator.new

    assert_equal "....", morse_translator.find_morse_code_letter("h")
  end

  def test_message_is_translated_to_code
    morse_translator = MorseTranslator.new

    expected = ["....", ".", ".-..", ".-..", "---", " ", ".--", "---", ".-.", ".-..", "-.."]
    actual = morse_translator.find_morse_code_words("hello world")
    assert_equal expected, actual
  end

  def test_translation_works
    morse_translator = MorseTranslator.new

    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, morse_translator.translate
  end
  
end
