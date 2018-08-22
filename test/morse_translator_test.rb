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
  
end
