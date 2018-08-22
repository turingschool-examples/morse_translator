require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_morse_class_is_made
    morse_translator = MorseTranslator.new
    assert_instance_of MorseTranslator, morse_translator
  end

  def test_its_value
    morse_translator = MorseTranslator.new
    assert_equal "......-...-..--- .-----.-..-..-..", morse_translator.translate("hello world")
  end

  def test_upcase_letters
    morse_translator = MorseTranslator.new
    assert_equal "......-...-..--- .-----.-..-..-..", morse_translator.translate("hello world")
    morse_translator = MorseTranslator.new

    assert_equal "......-...-..--- .-----.-..-..-..", morse_translator.translate("Hello World")
    morse_translator = MorseTranslator.new

    assert_equal "-......-.. .-.-.. ...-- ..........--....", morse_translator.translate("There are 3 ships")
  end

  def test_morse_to_eng
    morse_translator = MorseTranslator.new
    assert_equal "hello world", morse_translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end
end
