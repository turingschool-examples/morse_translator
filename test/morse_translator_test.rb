require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator.rb'

class MorseTranslatorTest < Minitest::Test
  def test_it_exists
    morse_translator = MorseTranslator.new
    assert_instance_of MorseTranslator, morse_translator
  end

  def test_translate
    morse_translator = MorseTranslator.new
    actual = morse_translator.translate("hello world")
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, actual
  end

  def test_translate_capitals_and_numbers
    morse_translator = MorseTranslator.new
    actual = morse_translator.translate("There are 3 ships")
    expected = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, actual
  end

end
