require './lib/morse_translator'
require 'minitest/autorun'
require 'minitest/pride'

class MorseTransTest < Minitest::Test
  def test_it_exists
    morse_translator = MorseTranslator.new
    assert_instance_of MorseTranslator, morse_translator
  end

  def test_morse_translate_check
    morse_translator = MorseTranslator.new("hello world")

    assert_equal translate, morse_translator.translate("hello world")
  end
end
