require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class TestMorseTranslator < Minitest::Test

  def test_that_it_exists
    morse_translator = MorseTranslator.new
    morse_translator.translate("hello world")
    assert_instance_of MorseTranslator, morse_translator
  end

end
