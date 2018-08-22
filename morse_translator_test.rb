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
end
