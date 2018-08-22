require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_it_exists
    translator = MorseTranslator.new
    assert_instance_of MorseTranslator , translator
  end

  def test_can_translate
    skip
    translator = MorseTranslator.new
    assert_equal "......-...-..--- .-----.-..-..-.." , translator.translate("hello world")
  end

end
