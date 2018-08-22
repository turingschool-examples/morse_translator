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

  def test_it_can_translate_upper_case_letters
    morse_translator = MorseTranslator.new()
    test_string = "Hello World"

    assert_equal "......-...-..--- .-----.-..-..-..", morse_translator.translate(test_string)
  end

  def test_it_can_translate_numbers
    morse_translator = MorseTranslator.new()
    test_string = "There are 3 ships"

    assert_equal "-......-.. .-.-.. ...-- ..........--....", morse_translator.translate(test_string)
  end

  def test_it_can_translate_morse_to_english
    morse_translator = MorseTranslator.new()
    test_string = ".... . .-.. .-.. ---  .-- --- .-. .-.. -.."

    assert_equal = "hello world", morse_translator.morse_to_eng(test_string)
  end
end
