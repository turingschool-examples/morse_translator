require 'pry'

require 'minitest/autorun'
require 'minitest/pride'

require './lib/morse_translator'


class MorseTranslatorTest < Minitest::Test

  def test_it_exists
    assert_instance_of MorseTranslator, MorseTranslator.new
  end

  # #################################################

  def test_it_translates
    morse = MorseTranslator.new
    actual = morse.translate("hello world")
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, actual
  end

  def test_it_can_encrypt_a_downcase_string
    morse = MorseTranslator.new
    actual = morse.encrypt("hello world")
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, actual
  end

  def test_it_can_convert_case
    morse = MorseTranslator.new
    string = "Hello World"
    actual = morse.convert_case(string)
    assert_equal "hello world", actual
  end


end
