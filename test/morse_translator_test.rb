require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

require 'pry'

class MorseTranslatorTest < Minitest::Test
  def test_if_it_exists
    morse_translator = MorseTranslator.new
    assert_instance_of MorseTranslator, morse_translator
  end

  def test_if_the_string_passes
    morse_translator = MorseTranslator.new

    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, morse_translator.translate("hello world")
  end

end
