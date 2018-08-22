require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_it_exists
    translator = MorseTranslator.new
    assert_instance_of MorseTranslator , translator
  end

  def test_can_translate
    translator = MorseTranslator.new
    assert_equal "......-...-..--- .-----.-..-..-.." , translator.translate("hello world")
    assert_equal "-......-.. .-.-.. ...-- ..........--...." , translator.translate("There are 3 ships")
  end

  def test_ignores_case
    translator = MorseTranslator.new
    assert_equal "......-...-..--- .-----.-..-..-.." , translator.translate("Hello World")
    assert_equal "......-...-..--- .-----.-..-..-.." , translator.translate("HelLo WoRLd")
  end

end
