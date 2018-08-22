require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest <Minitest::Test
  def test_it_exists
    morse_translator = MorseTranslator.new
    assert_instance_of MorseTranslator, morse_translator
  end

  def test_it_can_convert_word_to_morse
    morse_translator = MorseTranslator.new
    assert_equal "......-...-..--- .-----.-..-..-..", morse_translator.translate("hello world")
  end

  def test_it_can_convert_words_that_are_not_all_downcase
    morse_translator = MorseTranslator.new
    assert_equal "......-...-..--- .-----.-..-..-..", morse_translator.translate("hello world")
    morse_translator = MorseTranslator.new
    assert_equal "......-...-..--- .-----.-..-..-..", morse_translator.translate("Hello World")
    morse_translator = MorseTranslator.new
    assert_equal "-......-.. .-.-.. ...-- ..........--....", morse_translator.translate("There are 3 ships")
  end

  def test_it_can_convert_morse_code_to_english
    morse_translator = MorseTranslator.new
    assert_equal "hello world", morse_translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end 

end
