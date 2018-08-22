require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_that_the_morse_translator_class_exists
    morse = MorseTranslator.new
    assert_instance_of MorseTranslator, morse
  end
end
