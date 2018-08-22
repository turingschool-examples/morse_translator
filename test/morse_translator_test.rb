require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_it_exists
    morse_translator = MorseTranslator.new
    
    assert_instance_of MorseTranslator, morse_translator
  end

  def test_it_translates_hello_world
    morse_translator = MorseTranslator.new
    expected = "......-...-..--- .-----.-..-..-.."

    assert_equal expected, morse_translator.translate("hello world")
  end
  
  def test_it_can_translate_upper_case
    morse_translator = MorseTranslator.new
    morse_translator.create_upper_case_keys
    expected = "......-...-..--- .-----.-..-..-.."

    assert_equal expected, morse_translator.translate("Hello World")
  end
end
