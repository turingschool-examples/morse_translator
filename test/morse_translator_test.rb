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

end
