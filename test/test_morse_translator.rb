require 'minitest/autorun'
require 'minitest/pride'
require './lib/translate'

class TestMorseTranslator < Minitest::Test

  def test_that_it_exists
    morse_translator = MorseTranslator.new
    morse_translator.translate("hello world")
    assert_instance_of MorseTranslator, morse_translator
  end

  def test_that_it_has_string
    morse_translator = MorseTranslator.new
    actual = morse_translator.translate("hello world")
    expected = "hello world"
    assert_equal expected, actual

  end

end
