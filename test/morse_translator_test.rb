require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_it_exists
    morse_translator = MorseTranslator.new()

    assert_instance_of MorseTranslator, morse_translator
  end

  def test_it_can_translate
    morse_translator = MorseTranslator.new()
    test_string = "hello world"
    assert_equal "......-...-..--- .-----.-..-..-..", morse_translator.translate(test_string)
  end
  
end
